Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C9CBD711D6
	for <linux-phy@archiver.kernel.org>; Fri, 19 Dec 2025 08:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HLJs2jfFXhfCXR0jWEezIPXWLGyAvZgUdNoAEb355+4=; b=LlrIjLRjqwwIDm
	uKE1AEOi/d1ZE9nqsAoaJCzp60L8lqN+PC4mTPweWyw4WiUWeaJEwI9iwu2OoZb59LdhmMb4OXVFY
	BEWYLwcunWhZ7NwE8kLaTz7V5Sg4bH2KDbSsNRIr++W6VBNU07JOYx+38ii4b8fcj0xg4QfYCMywT
	0qIm+4YtF/Ye5z1BpUqzHocVG4xN9YrTspE5hClIWVkk3+ct9h1duXG3ds4q4H3ANtag81Ca1bJD/
	CZ9HwYow3v3yybXyncX+Q60DRbZSrXyr0FdFNiegvtLr1xadh0jFGtAYqBemyN6UupEU2POnYviNk
	M8N8GrV/8q/RUm3VzpzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWI3-00000009tnB-0Hzs;
	Fri, 19 Dec 2025 08:56:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWI1-00000009tmK-23x3
	for linux-phy@lists.infradead.org;
	Fri, 19 Dec 2025 08:56:46 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4cN4u091968
	for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 08:56:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=c9AdeRnv0azf+nXk5FraFWHiFxXfCZ/osx4
	6avNqI0k=; b=R028n9fi9q+AJeWk+akkv2whBJXqAiYnXWZdBikNVQPdI+TGFdl
	zpKUIpQKHrodSQ5dibcQ4K4UVrBLISCLB3ut70iwI0/ZHxLhwhp6UxJQgtqagMK1
	7Mo+Ksag2rNQU61LzPAEiC5wepxzYxJedQvELdUjnPHNdoTOBerLOkfGhgRDH4aI
	qX53ZMX0iJWGhSDva9omTlYCugIBE/ZKn12HEfTZV7n5rvXQ2N4zwS1NorksVC3j
	gvh5BwBMGulf29twe/CxBbXUNETMeWBpXTLJBSUTKaG8146Mj3TgO/C1QW2mugdh
	EzZBrZ2sH9KuM4RGHFCoxgCUboi+2NVjmzQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2e9y9u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 08:56:44 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4eff973c491so34757331cf.1
        for <linux-phy@lists.infradead.org>; Fri, 19 Dec 2025 00:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766134603; x=1766739403; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c9AdeRnv0azf+nXk5FraFWHiFxXfCZ/osx46avNqI0k=;
        b=VBTGN6sZCtBt7kgM0liFDjd+yPgDBdPU6hb5QHGaYheeC/y25oQzD2PT21RCbFY3nx
         o8DLth1he5t/tpsQw6NfZx1b4lIWe3jljnmWyTDPbmpBsswk9xs7YzpmxjaRwztMvQx1
         rngFdHp14e0C0HFMB29c2+XW55139iaEoacjPcMEvwjssQeRezgRBhWRqjVjHIjWM+wC
         chg7/qWQT9XGX7WkfpbEWd51kiOazhKLSpGj3cmBLrrH7L6tPsnL40GZKDuVkbpnDyGy
         3H6x75WqNSpXIwKG40jd2UF00RhMSXy5GTWGDg211b0QaixUc4J4pxLdCVdH7pX+qOCi
         yD5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766134603; x=1766739403;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=c9AdeRnv0azf+nXk5FraFWHiFxXfCZ/osx46avNqI0k=;
        b=ndpkbeTLBNmqiJXqg5b+tivY4b7lrvwBpG2bq1U0aPwQvo8DLb9fdYjXYMJQLq6+cX
         IyygMEl0j5Oa8VDjX+Xqi2MG4l9s1Zf6mNToycw2wT5c+xyX3duBUwRhf5WQNEPQWyqx
         X/OmbeIpbm4Ni1c5kbruE4XSiX4kc5XzxBM3OB5xVI+rcCVGaQLbVj5ydYgHCgGAyMb2
         ia+WcGGyQ8GWOANkmLyXZYqxeYknlXMZT982zBRjqEEQCIzu260N4iS/vAB7zbKeBsP7
         SIeJNBiYBuWREFDMTpmofCcVtR5zoxzUqh8Fh16PtaC8X0uudA0sELJfUjNv+NFubJFt
         EDfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXPLYskCuItVxIeU8HLpG0K5lLGw0NdIgVqglB+YOsMUVzJ2CwGTFT8xbBAh/Mq8GsMGlBQgKUXLwQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyDA4zKr7ihdxXKV53q7b2hT+MIYBsoxohcnWJGeGBlp1/YhUkH
	r9QSMeVMgQJMayN/LGVclhhoBiEHnMCBIAhM+3vK4AH8YkcSfd4M+RVQAL99aB194s4TEktUO+e
	2CcUMhg0LSFVnrgsqWcf6c+UwnHSP5rjT3yZDgT0n8sEF3CdYRaTwpgTsjNkDPQ3Q25U5
X-Gm-Gg: AY/fxX7m4BYr4dOWBdNBU4ZveVx+i/pKeJ8m/V35mH9mznUa07eTkczK6GTLOqIjZlo
	fBd9FAUayUaJmaloJmBSwBmZVinL6Jy0vcI7s431F4DPupiV2KZc/Zu1Yr+RRCmth7DnrO+lToM
	Oqq7yBamQAiRY8l6ioK9EFXLIwL5id/rz84x9ZdFnrNDuQPVPDeqXEpBzKkdKZbKZLNgQW8Wcp3
	YAUlndaYftT506zM+DbuxkptlQoRxIM0ut2nVDYPywr4rjVhRDz+n7EcmvFCjsYyKEh85Nt76Lo
	k+L0CNbCniu4UTOj5ehrFPpyxZfETlpSPYwsSfh1meAipU0+Y7YdS3sRnHSxdhYX7LrM+lOrVyA
	9L4PXzUQB5zX+ZrnRtEIRb+f7ZUt3zZ6TwiDHFXHifSQ9NBUSkst3vHqgRhA5S5hAEKlUKbH6T8
	RV
X-Received: by 2002:ac8:5f8e:0:b0:4ec:f23c:3b94 with SMTP id d75a77b69052e-4f4abd2bd0dmr29615701cf.36.1766134603497;
        Fri, 19 Dec 2025 00:56:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHAIQVSo7Ca0U+qERUvIccMCLQAhZTbWeyO0t8y9iCJ8NjXaWEUHtMfJy6uLIe+d2YD7OQ+Lw==
X-Received: by 2002:ac8:5f8e:0:b0:4ec:f23c:3b94 with SMTP id d75a77b69052e-4f4abd2bd0dmr29615491cf.36.1766134603041;
        Fri, 19 Dec 2025 00:56:43 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:20ef:32c1:1968:bfa0])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d193522cdsm32983145e9.4.2025.12.19.00.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 00:56:42 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: dmitry.baryshkov@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        andersson@kernel.org, Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v4] phy: qcom-qusb2: Fix NULL pointer dereference on early suspend
Date: Fri, 19 Dec 2025 09:56:40 +0100
Message-Id: <20251219085640.114473-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA3MyBTYWx0ZWRfX9P35E1DRA69W
 jDZVNwZ//iRXbTUXstn0341dnelQbLsX9pvgVbkZ3xsSkI7wU1OYTdJEiJUn9sFDP+miIK+PIZ1
 Q3J7VdV8cvbP1bXz8HFnx4cRGjvaxbThl4q3pCA4Bbv1lVL8Tc4kIXHpMsser1CX4Y+7hT1wyNE
 sxbHgdkNgHnCsWE5nT9TR0Mudu8na851x+Dr0kikX/UCq8O3vKsm03j2Kky5ZsokraemGbNSyDC
 7xi0vXFkoPe/SJJ6XlbIj/uQ2VUdPh47hxl9/f6IZXNgqCIlJ/4nrtxS5NOlanfou19l3kwvsvx
 3jL9Tm/eji/yL/cSiKq+x7dMX3PVFz+PRwmTVOhtfQssGYR9X1SjesdDRS+eLkW6R6V7y6WlzCi
 t7Z9QPmxC/0IeBgcX9mqAfTadHxtgt0KNCQDoj1/GxQDuwf05iNCFgFb/uUjwRWAcvyKbp86Onw
 ++RM5/E7GlZ/rQn/cEg==
X-Authority-Analysis: v=2.4 cv=W+c1lBWk c=1 sm=1 tr=0 ts=6945134c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=wP3pNCr1ah4A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=5BFLCExQjc_4t40VwNQA:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: 4lVMSPBTf7VBYIDMyl0-5KXqAsiraXCS
X-Proofpoint-GUID: 4lVMSPBTf7VBYIDMyl0-5KXqAsiraXCS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_005645_657309_692CACFE 
X-CRM114-Status: GOOD (  16.52  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Enabling runtime PM before attaching the QPHY instance as driver data
can lead to a NULL pointer dereference in runtime PM callbacks that
expect valid driver data. There is a small window where the suspend
callback may run after PM runtime enabling and before runtime forbid.
This causes a sporadic crash during boot:

```
Unable to handle kernel NULL pointer dereference at virtual address 00000000000000a1
[...]
CPU: 0 UID: 0 PID: 11 Comm: kworker/0:1 Not tainted 6.16.7+ #116 PREEMPT
Workqueue: pm pm_runtime_work
pstate: 20000005 (nzCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : qusb2_phy_runtime_suspend+0x14/0x1e0 [phy_qcom_qusb2]
lr : pm_generic_runtime_suspend+0x2c/0x44
[...]
```

Attach the QPHY instance as driver data before enabling runtime PM to
prevent NULL pointer dereference in runtime PM callbacks.

Reorder pm_runtime_enable() and pm_runtime_forbid() to prevent a
short window where an unnecessary runtime suspend can occur.

Use the devres-managed version to ensure PM runtime is symmetrically
disabled during driver removal for proper cleanup.

Fixes: 891a96f65ac3 ("phy: qcom-qusb2: Add support for runtime PM")
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 v4: Error handling for devm_pm_runtime_enable

 v3: The phy-core expects parent's runtime-pm to be setup before creating
     the phy, so move back runtime-pm to its initial location and
     relocate dev_set_drvdata() instead.

 v2: Move runtime-pm enabling after dev_set_drvdata
     use devm_pm_runtime_enable() to fix unbalanced enabling on removal
     reword commit message

 drivers/phy/qualcomm/phy-qcom-qusb2.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index b5514a32ff8f..eb93015be841 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -1093,29 +1093,29 @@ static int qusb2_phy_probe(struct platform_device *pdev)
 		or->hsdisc_trim.override = true;
 	}
 
-	pm_runtime_set_active(dev);
-	pm_runtime_enable(dev);
+	dev_set_drvdata(dev, qphy);
+
 	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
+	 * Enable runtime PM support, but forbid it by default.
+	 * Users can allow it again via the power/control attribute in sysfs.
 	 */
+	pm_runtime_set_active(dev);
 	pm_runtime_forbid(dev);
+	ret = devm_pm_runtime_enable(dev);
+	if (ret)
+		return ret;
 
 	generic_phy = devm_phy_create(dev, NULL, &qusb2_phy_gen_ops);
 	if (IS_ERR(generic_phy)) {
 		ret = PTR_ERR(generic_phy);
 		dev_err(dev, "failed to create phy, %d\n", ret);
-		pm_runtime_disable(dev);
 		return ret;
 	}
 	qphy->phy = generic_phy;
 
-	dev_set_drvdata(dev, qphy);
 	phy_set_drvdata(generic_phy, qphy);
 
 	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
-	if (IS_ERR(phy_provider))
-		pm_runtime_disable(dev);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 }
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
