Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52859ECD980
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 16:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Hr/GQcWniiD8xPMvZ9iWtHkzBSR+J+Uz8qH2byyI6OM=; b=h5g
	Phc6gNGDAvUF41kMqaJvSBicKExTN2pdnmGM1LPIoclUeOyZFz2mJ0Rcfu/o2EKZopVS+aKthv44W
	O2DyIxG8FZDGe0A6Qy9gh0ma6WAuWQwIAMtwjgRmdgZP3QUFYlFOcHB98NrIODpraVPdt6XlnxJyw
	6VU51LUWC9sHKkuGOrj0+ktTtgE79JsUMdgZwoM9CZ+OvkLfk0efs9rBnf3/3XB+Eg8obgeL+VJo1
	JYP4yX3MR0bWlxHnmHmJCflpCjQHTQsWmakxMLmheBohCSsAO2Yzln/LhSl2ym/lsRytC991M8R9C
	MoOcSV/i3WJK6x1wqkq2FLDpHp3IbSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1ou-0000000ACfz-43Di;
	Thu, 05 Feb 2026 16:03:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1os-0000000ACdn-1HBn
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 16:03:03 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615Bo8K03047911
	for <linux-phy@lists.infradead.org>; Thu, 5 Feb 2026 16:03:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=7gVCs2DHfX1NZ2r4vJLDBo
	UFudY1vIo8W9asMpUXTng=; b=lM3u9vQrlY6zYWKJF5xKU622I1RHyFKBj8V5QM
	whMnpZisdoztdPcWbyxvjDIK5sTxbVBWb3Jzsm3ijxcCD5RNgmvPC7+x8LMIWxZB
	IUmpZMrtBjTHgDDvNuegjjYQ9Uwgxa6AJ5Ad+fCvQSsc3SmPGe5nH/6hyb/ljE74
	tP2quiaQjZDnIHaWm4GkBPA2JOWMmHwwfppjey/pcuU6OO2O6isPhDDM/z2F/KXB
	w0nRenE8LkaXWIa1GmdLFKMQhZZtQlkahwIHKXoyj12gTw8VLVJCZUoBMhcjXKWZ
	DykxqDZQnomqlQBK0qDkvLYBjwfXIKjfNesGQey8FjDrdAcg==
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4mrthyp0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 16:02:53 +0000 (GMT)
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-66b70fffe1dso4922635eaf.2
        for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 08:02:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770307373; x=1770912173; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7gVCs2DHfX1NZ2r4vJLDBoUFudY1vIo8W9asMpUXTng=;
        b=QSkwc8IIIgA+rcqrgh2ANx48gGncq5pZBkCGVcOdEs70mgQIFGYDUWpvTEKIeY14qt
         aBMe2qXk5J276DTQL2Dmqg6O7xDbwg7MPgpAO0ZqkFr/27L1Nt2Oog3NtDVfzNpDt/uI
         e3Ipp03i4pTKhrfg3vm+Bfd4rGX+AzF0ljBC6IiMxPurxqeouHXmSEzOU6B/oKmCgWX3
         Zs1DgvEkDhY8+KBWw5RXYonffNg4vYdzKw6hxnaQWELrmeDLUqcC3fED+LQSvcFgj1Co
         ktOot9j/BtuCHPc0qFHRu/Er6HzRpztF8QQsnuck53NNewF8Rofjzfq/wfO1V1A3jNmz
         PXSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770307373; x=1770912173;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7gVCs2DHfX1NZ2r4vJLDBoUFudY1vIo8W9asMpUXTng=;
        b=Q7RKt3B8VyRYOOdKDJwnZKMHiW0K6K8z6MR39agbvtT+Jw7NbdJiK9m8HSJyRPdRyf
         UUEmUCQtL2xRv+JAKfr7+jO/QiqtuZq7C0eujMObyLE4HlPgAFKYTv8wdVE8HUcufQGP
         NmxqcIzkCDocVX5J58QpWkLG/40HRsb8IJlXcrNecPB5FFVucJI4HRz2hqAR+8V8GfyY
         l8DAfvACPfm4j3t7Ku+4dcmhGu0tEof3vdcRuj/All9GBUalIqXbgHXgbSPsrgRHvZgk
         FcOXa+mqcRx00HYxm2QQoY3xLwxu/4akbT6b0hLSi0UHMWB8hyetNa0KWQmSRRKl5v5w
         QX6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUzL62Ip++5CPhL2IwpB/Vcd9du8o6T3t7SQsiDesnmxY6v4EkdfNYe0UgW2Zib26YLVzJXkQ/Sv5w=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxn+e5Ep6qQtYuJJm0jklAjAYQqjKxy2b9YG0Qc459JWk6B0r2s
	cMMtk807mhRO/avgA8UURqE4ZjHlAcM+Q5CW/LG79i8/jHRDST9P6kwmatXGuQMYfq+rZP/E3D8
	fMC3z85A7fgwzgvelzjEEUlJ1bT7DwltWXcMVsjoDFJTkIeJvLRCypg4lMVJMM8kitUr/
X-Gm-Gg: AZuq6aJFpH1gaM1L0SVHbI107VTJtL1Y36N/lnHTqUlrNlF/uZ7MvKgQKWvgB52vTFu
	lfM9ANSUt+BO4AP5t4G8GY9zYU9I0NAA8wybwch50B59UKE1xcNJ2KmctusVQZeTLqBQ7tcEqLW
	tFyvCpsZMTdKR7ntlUjZlyPNT4GivAcdiUCYSgCt8YSMGuDaC0FVQ8k+MJonbQ29juCYWEeH+Bg
	F4v6r9wyuQSCqRcHndztJlES8Kbjlxk5WEopmL9uH08Yu1njwv2CE9Q5t1VomCIyM7tKvTqIPH1
	DHZfWRTtrQT5+7/uRdeqE3hrK9K3fF6wH2S50zYJTjq718psaNzkzwIiVA/vBPCFw1SfzsVLUuv
	SMNz72NJZzFppqMYrjryElEC9DNOzOtajmHcf1dWhbir8rQ2jS+RnXeHP7h9AnHj4JquH1/TBDo
	ZL
X-Received: by 2002:a05:6808:2518:b0:45e:d128:4d13 with SMTP id 5614622812f47-462d5a198cdmr3667222b6e.49.1770307371330;
        Thu, 05 Feb 2026 08:02:51 -0800 (PST)
X-Received: by 2002:a05:6808:2518:b0:45e:d128:4d13 with SMTP id 5614622812f47-462d5a198cdmr3666751b6e.49.1770307366869;
        Thu, 05 Feb 2026 08:02:46 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:103a:9c65:ad2d:82fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436180640e5sm13770002f8f.40.2026.02.05.08.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 08:02:44 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v3 0/5] phy: qcom: Fix possible NULL-deref and runtime PM race conditions
Date: Thu,  5 Feb 2026 17:02:35 +0100
Message-Id: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEyMCBTYWx0ZWRfX/VCxb6i2ZDzf
 TfPW5L1uqgcc+M3QVtEuqLaAgmw5Q6CovdJMlewqBBBVVWYPizHARHm2+l0ytnnDO+y0SeulCLZ
 aC8gDUV0eVV5u7Kbfr9mulgv0gIg1K5c+GA2JgK4dlSlVWNQ81cm2Ojzmnuf/5l52SqdZITTl8R
 2q3UAw5z/vsnYnR6z23n+HH0zoMycibgTdgfiI2JyTcbqI36czKhc/sSUvCHDg+L91MZqkG4BJO
 HjJtmituQ1Jt+FpJUkfoFz5zB0Esfx3iuvl+HkYu5Hzof9+pzCBV50oMKOD3UfjycQJkndyQwKm
 kY1s0mxnz/o5xNjEiJs75wcPGn60DVXB7q+h9slXiTjbrfKU/QqtYICH6Q5oMYd/lxvjJbuF1Je
 ejwsaU3PhnFNyKZZl6A4/DbMDXafSVmx5oYZahOlH0p00oeahCJI4DXEeq69vA5008Nw3tWEjxX
 tql+ity+4BqFpZPCxkg==
X-Proofpoint-ORIG-GUID: Ha25kvJmHaydgJzxSMRfXiCeZVdxWFHc
X-Authority-Analysis: v=2.4 cv=UoBu9uwB c=1 sm=1 tr=0 ts=6984bf34 cx=c_pps
 a=wURt19dY5n+H4uQbQt9s7g==:117 a=xqWC_Br6kY4A:10 a=qf4gfuq51q0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=C7rGozDzmCPgz14KtV4A:9 a=3ZKOabzyN94A:10 a=k40Crp0UdiQA:10
 a=-UhsvdU3ccFDOXFxFb4l:22
X-Proofpoint-GUID: Ha25kvJmHaydgJzxSMRfXiCeZVdxWFHc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_03,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602050120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_080302_459628_1DA2DF59 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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
Content-Type: multipart/mixed; boundary="===============7761703906289758587=="
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

--===============7761703906289758587==
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

Address potential NULL pointer dereferences and race conditions related
to runtime PM in several Qualcomm PHY drivers. In all cases, enabling
runtime PM before the PHY instance is fully initialized can lead to
crashes during early runtime suspend callbacks.

- Attach driver data before enabling runtime PM.
- Introduce initialization flags where needed to avoid dereferencing
uninitialized pointers.
- Reorder pm_runtime_enable() and pm_runtime_forbid() calls to prevent
unnecessary suspend/resume cycles during driver probe.
- Use devres-managed PM runtime helpers for proper cleanup.

Changes in V3:
Rebase on next and remove 2/6 (obsolete)

Changes in V2:
Split patches 2/4 and 3/4 so that the null‑pointer dereference fix and
the runtime‑PM enable/forbid reordering are logically separated.

Loic Poulain (5):
  phy: qcom: qmp-combo: Prevent unnecessary PM runtime suspend at boot
  phy: qcom: qmp-usbc: Prevent unnecessary PM runtime suspend at boot
  phy: qcom: qmp-usb-legacy: Fix possible NULL-deref on early runtime
    suspend
  phy: qcom: qmp-usb-legacy: Prevent unnecessary PM runtime suspend at
    boot
  phy: qcom: snps-femto-v2: Fix possible NULL-deref on early runtime
    suspend

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 10 ++++-----
 .../phy/qualcomm/phy-qcom-qmp-usb-legacy.c    | 21 ++++++++++++-------
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      | 10 ++++-----
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 15 ++++++-------
 4 files changed, 32 insertions(+), 24 deletions(-)

-- 
2.34.1



--===============7761703906289758587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--===============7761703906289758587==--
