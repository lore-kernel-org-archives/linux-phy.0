Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D092CD5BD1
	for <linux-phy@archiver.kernel.org>; Mon,  1 Jun 2026 17:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1bbvwqfSQFX3d511Uxr5UdfJue/5XmMbtZVtbdu2E2I=; b=Wd/w4QW7Vfdgvd
	Sl32LwGsocJICCOwj3A598v0HL78+AheLfpMEaHwz5SAnU8CL3GAYi4zfzUTFfIG9vSTZ64nUyMIx
	Z5smzsbJJq85WAKRxT8P4qVZRUjl9WLsuHNRbJW/0UHYIuyXDiTr4Mxgi0slOmD1FoDOQ/JaH8J/v
	M7D1TmGvaqNIjZD4ec1NV2zZxkMeQ1wDwMZJE7PzsgKCz7D+yVPprmCNaI+UB6KQbDOsyWM68yVap
	zf/ynmsdt+7cxbiF+ei1kVbZW/diBl8Y/TT8S2Kzn9sdRZxE1K4wr9K095Vmu4VszR6VKXQIv1hHD
	f16DWQndvj72MfB5vbEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6Tg-0000000Ba92-0fo9;
	Mon, 01 Jun 2026 17:31:04 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6Td-0000000Ba8a-38xT
	for linux-phy@lists.infradead.org;
	Mon, 01 Jun 2026 17:31:02 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 651EnVMU2740525
	for <linux-phy@lists.infradead.org>; Mon, 1 Jun 2026 17:31:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xCwwzgX6X6FAk6K+BEi4rFbrCZI7XpDhhtoZrbnj3PA=; b=B1/rujjM/5EQKr4X
	lUbYrgXgDIX+FCKrQ3Hn3MW3Jfqz4Ita7YYgImO1R461MdboqGxaBNnXvv4lfMK3
	4feFCRAU9eekbl1K8MPkKZzLJ4CpTyHDUB5zw5H4snA/lx3XmfUdd1PfV/o7wkLg
	uD4dd7/OEPyYVHYPdSqR/XkhSI2lZM5Yqp95GnQAwfME0Wm3YSG5+WZV3XfPUzLa
	dmKotEzbUHtcxFCMWEOKxelDomUJjNe/2KgCHp34OdIodaNlK2EOmpWttrK2Zx+G
	MF2WeD8qPX81rGI7yKVB8jMYRUIMbecfiKVXntm7TYXP0X9YkLeaqT/B3ExpfyY7
	KIwvLg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eh6sqj809-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 01 Jun 2026 17:31:01 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2c0c1e08848so22107825ad.0
        for <linux-phy@lists.infradead.org>; Mon, 01 Jun 2026 10:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780335060; x=1780939860; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xCwwzgX6X6FAk6K+BEi4rFbrCZI7XpDhhtoZrbnj3PA=;
        b=jhkReyZCbk+eLclg4hlbVJD8mP9/xuGUhjRnb9BLSzA4XK9fXTFRSiAZrCHQt3nfNH
         pMobev8Fa7C79yLHlSWwEg7/IG3aOGW4uz4Uyi5y14qf5litt3HMAWsMviPuViInSMvM
         K3xUdZoP5CZZoiby9MencIHfnEIAGTpfIYr6mp/tXPfFGMQ2MBLScLjUZjhhIs9EpSFi
         n5Pl+OrP+6tYUKKnCS9zMLTdtY6HnW/up5lBY+LljcXD7MgfVKOWJ/Vv17PLRsNFGIkX
         UUOa2xKh2kfhxMwD1dXdauwxF+0iO1F/dSBGkXHUQ6+iggi9clYJRGg0BTeHbb1krziA
         mt2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780335060; x=1780939860;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xCwwzgX6X6FAk6K+BEi4rFbrCZI7XpDhhtoZrbnj3PA=;
        b=Z1Kbi377/CvT5pCrBPLm/5rBDYL3XgjOzT+od9kmzYqNhX1zpcsd5a3n+O3dDIhnLk
         dL3z4hzpmQbJVEL3Kl1DQQNXwk74Z44mm37BFjgRQUzy2lHhxLh3VA/WBx4HOH30Euzr
         K854s3MHX32FpaamrdbwgQ1dJrZX3KLmDHtQ6p7y9qjtx0XGKdnA0tkWupd7mGx1vJ7D
         vHTsaLSIQpFKv46ghrGsTsrLAA91B4QcZgEuVO7hSkCAcPshKYXdIYpAOAfZsffWl48J
         htKud4Qr3brfeSsR2zQvUYEF3QiW40VKU7TEvp4RfVZMU4QnkXQUx8vcpC7KXuK+aB1E
         rfMA==
X-Forwarded-Encrypted: i=1; AFNElJ+LP8fYhuGRvfDNsTRG07kqq/FzG2fXywoeQitJccrAbbbqjs9tNSPbxrVDkFi7xlKvF1ayg9uQgUY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOtpZc4wsRnkCI5WuYHeSxSzKAAuZg92MwKHvgZmSdnNwHsYTB
	CjMYbkcpOMcWVgqUXrAajJm4IwaZCz08f3AAh//DVJE+Jj1NTgyt/bdGnbH+xY00NBry+cnzjkQ
	0ioGKrjKPVifG6QtFao5/hxlxcqnSCobDV0ZxCL0jCH1i7RA3LFwcX3pZo6aXbvC7cClCLE8hUG
	53
X-Gm-Gg: Acq92OGriVjGl9cMYvvFVUKmB5P6lmLUK8Yg4YIiCf5KROjmNNJN5mxjWv1GBNWDXQF
	CUxhRKZZojjl/HUmjFpzFC1Xhqu9kXzAuAknVjnbeP86fpBBjxK+Hmm5XyrTkuowqws55hKfjeA
	bdBlDmRNe5ab7fFd3TjEdBgbJKFDmAbDeZz6kChq2yGqCfJvLbFjETT2fyJUTWjdbcINOYE2fQk
	r8QAM0cZqxVNuGj01mXux82DYlBzAASY7wzGHVESVGa71HuQLtcwwtX7us+S2VD5QGog8Og0jvv
	hAXR7pmK0vTV/GhSMNN0k2sEAYcaQiOCBeOBJUg/L72nOvxW7DSP/LHD7Ze0VgqBiNwsqRbEDyK
	UxcyadBl7GhfyzrQODbUzD9MGWXBXT3QSxhR2UvF/N/XRxEGYOhfDzW8Pp/ubvoaq8zI=
X-Received: by 2002:a17:903:94e:b0:2bf:2d0:887b with SMTP id d9443c01a7336-2bf367bd713mr122994495ad.9.1780335060541;
        Mon, 01 Jun 2026 10:31:00 -0700 (PDT)
X-Received: by 2002:a17:903:94e:b0:2bf:2d0:887b with SMTP id d9443c01a7336-2bf367bd713mr122993165ad.9.1780335058650;
        Mon, 01 Jun 2026 10:30:58 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf23b011f7sm149136085ad.41.2026.06.01.10.30.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 10:30:58 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 01 Jun 2026 22:59:45 +0530
Subject: [PATCH v2 2/3] dt-bindings: PCI: qcom,pcie-sm8550: Add Eliza
 compatible
MIME-Version: 1.0
Message-Id: <20260601-eliza-v2-2-6b44c9c23d5e@oss.qualcomm.com>
References: <20260601-eliza-v2-0-6b44c9c23d5e@oss.qualcomm.com>
In-Reply-To: <20260601-eliza-v2-0-6b44c9c23d5e@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1780335042; l=913;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=Zyi6ZGL896jGON4iStDG4HYuocR8SRlTT1GS2O/Ts0g=;
 b=0Cr9XKqiuqEufsk3MnumP89WSaLaGSxg47BTJwEc37C20UjzDgXXyOejYZMYpvYjiWuENKAZk
 9WtrirmnKFNBkPl9gIi+eQg/CY5DJFxT6TFdo6IzLtpLOfTn/diUBhW
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: m4SsbJNT6eCdnNXDCU0zWaowD3z5EFuG
X-Proofpoint-GUID: m4SsbJNT6eCdnNXDCU0zWaowD3z5EFuG
X-Authority-Analysis: v=2.4 cv=eqnvCIpX c=1 sm=1 tr=0 ts=6a1dc1d5 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=ly1VyIkaSgMpB_u5KqwA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAxMDE3MyBTYWx0ZWRfX1dTLLq1yQsj1
 bR2D20lHrRvU4rRFW6CqdFLO9mvjx8Z9xBSgDtHUkwlBH6WbluTtiTMRYsKvdvUT4WM8I/GvJo1
 97J3r60lLYUEd3D/QjdlaHDR41QrgZQDkg7RNIRs2+er9Qpa+EodqElgFFv7c4+WpUlcDfnfdcd
 +Ne0lZcoKz/yQohLz5wS7v9Xl/kzNakf5M8xFc9KDfWjMa5Q6iTFSLqfd4crQPgFmfR8dyEl9Ey
 tSrNGqRGM6TrFDS5bTGu4P84M8MXlUX4aqVZlLMb2F/FAPJgNmReRCYSmUxefb1OJcBCz+lDUTf
 lfXq3njvrWXsBPgVE4oWPU1g+fwoOtSxyZrRCcr7niC8+sorUg8T3RDnEieZ589cWqkGtGrdl0W
 kj+mUVVwCl1Z2MSZ9VCHkt1iyt5ujIFHiBC22uiTCp2OJHNvG9oP7pdgHQedwIZ20HMGpk3GE3Z
 ZTssSN55LzsoA6ZN2VA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-01_05,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606010173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_103101_794581_52FBC2FA 
X-CRM114-Status: GOOD (  10.13  )
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

PCIe controller present in Eliza SoC is backwards compatible with the
controller present in Eliza SoC. Hence, add the compatible with SM8550
fallback.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
index 3a94a9c1bb15..98b7e0612410 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml
@@ -20,6 +20,7 @@ properties:
       - const: qcom,pcie-sm8550
       - items:
           - enum:
+              - qcom,eliza-pcie
               - qcom,kaanapali-pcie
               - qcom,sar2130p-pcie
               - qcom,pcie-sm8650

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
