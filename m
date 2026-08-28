Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B0B4C61DC6
	for <linux-phy@archiver.kernel.org>; Fri, 28 Aug 2026 08:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ype36VspEWPoAmkLTB4QwL7y0HOmFXoh/VLCbtIaA0g=; b=jZSzWRWNjRtIN2
	kfJ2LmHKis49AMohDTBmgS0QfYLVj7bvXIzzkkyKi5Qr5XupkIsACe7w0i57kAGjMyJCEAs9qsWpg
	Ux4CWRPL/rYRYmcHOfsfqSSmO37cIniJxVK+m7Vus+4aWJIxGE9blhorW1tq1Q+JZuNhTu1LHSHS3
	xkU2qRCaMGjIsJHuGJ26xvpMyb1xRw9UW9ycodAKgSX2gAypo3JalkOvKf+VwmeCRNSJrozRhPk+V
	z5CwkdTkYEmLaJK4QLY43igBvmfg/Aa2qSL5/7Eyh86snO05nQ9GIAmj761RchY1BXL/kpfh92FaT
	1dOGtuIbVwlklbkwktBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsC0-00000005Kuo-1FwX;
	Fri, 28 Aug 2026 08:44:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzsBy-00000005Kty-2yJX
	for linux-phy@lists.infradead.org;
	Fri, 28 Aug 2026 08:44:07 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67S66gRa2196683
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 08:44:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UKkMnWvHtEU3AJjdFVpOEvwgEQWljpY1f7+4AWt13UQ=; b=QD+XAuqqIWu0wKc4
	vfWTahr9L/A1sy/QyMSZMD5OOtWeRDd0sF2ZIt3cxc4yUh2Ph2BCYZz5bKjaw5Oq
	FOt8/Ly6sZROSCRWcRDU1fKxeLTumfxbkNDWGNvgA3RQJIDsdpeeMuZv3iIvL2Jc
	nQ7xdaUcW7ciyI82YponHEp64x30DN8xhGNRKWTywEP4aXmNNZZUAfIUoAzFL9rB
	i0lQft/mQ+HZ4mEIGtUsXWzllg2SgyccxiPGrva7z9rRj9dbtTJ9HBYOU8Hlxec5
	H9gd8e4QOWFQtFWD3aarmgEkWx3WFWYqUuccap6v1hIVnuNFqu2YqYyfZ7b6Qroi
	tXJIHA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gb3mxrvxh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 08:44:05 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2ce7dfd33ffso11772615ad.0
        for <linux-phy@lists.infradead.org>; Fri, 28 Aug 2026 01:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787906645; x=1788511445; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UKkMnWvHtEU3AJjdFVpOEvwgEQWljpY1f7+4AWt13UQ=;
        b=ksNLjh2AfJb4lZGmg8sTlkau/H4WLpzRbFDcEqHN/Wdpe0gG7apaVIOfIFhMZmt6Wc
         N2G7eGp64l4N8vigk3Zsjrcy/jPUcXoFHM3LAfC4FoI1xYkWaH0AnTd5pyszTZruBcHV
         2lhRe/56H5Q38O/ZICguqdYZgfRHSnl2loc+JY9a02ZG/s2MDke3iMmcQzOEZ79ihYmq
         xHxcRAPsXzcoo6q/9EgNPn1FBrNOrWLh9/O1E2Bty7/y3MIeiIo668+gmGyrQYivYDvZ
         E1CaHyh7nzWSr81Ia2yJuI4fqUnhUoDOM7uSN6l1/kum34QZWHCTPnE8R7lrbygmUEi7
         MM8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787906645; x=1788511445;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UKkMnWvHtEU3AJjdFVpOEvwgEQWljpY1f7+4AWt13UQ=;
        b=f2aH0ZDMQwCzK41pjl9nO5Lq4ycKoClnOIQna68VXByiRkSgj2DogW+uEKVTfv6KxO
         fNagdKAbqGRncWFZ1jy/5VCJkRhmdc1tVmV9pNHSFt71tdCWpGVLlwSzbP2bikkq7csD
         b34EKooKvGqZaiW9nv3nt7CNfPlI0GYBVKSswqX4ItEy1tHXuY7oelYkm5iwZckHkzuh
         hHQs0DFShxOmwXxLmyrjTvLU+ib02Ab+IBzIpvT3RaJPzBV+hVht6DeVw7vvc5YTbp+Q
         4gETU62Vzg05cZjVFNMl/CD++lYTHmlxZ4qBDt3K1WG5o3iq27M/F3Cyg2zCdvdeVFJC
         OJCw==
X-Forwarded-Encrypted: i=1; AHgh+RrXv702S6pkFRhGVXfY8BJX6JZRFtAwH4Zt+yhJOLVs2uV/uUHWG6dpI9E7N5T1pI2tUm9znqDJ8nc=@lists.infradead.org
X-Gm-Message-State: AFuF++l+n/CfGn6YCIYYRuYv5HDCb8/c/lvkaCjTKhzbpuvdLmKld9tR
	0BWN/kFyShI6P4JBar2SIYtwcG6J7nmRBEt4LhfRhAJ4gSiske9uCE4PLzXFvpAIhZyXIBWlgqP
	hKJBH2vDs1f/AEzsk7er9RMujjek9AYL04h5v7C+TEfx35nU8J66I6sbMbtiL5ekYJ9ft
X-Gm-Gg: AR+sD12Z9TsOFboKf3/xaVyYHLfFze2KBG+l0IiQCLRVyuNkVB9qlQrebAGACLNpdqb
	9C0CkdewR7Ul2CtuXbHn6sJPNLTDV6emptqOD7hbp+aD8/R/Lp2P8wEVKRXqSbfohs3hkoq7GvS
	7jLX8T2roD6vYUJUz/9Z3pMhDm2NvC28HNmsBcC1tRq58FIZ0fHBVKZYTrZBmlM7jnPUqsKvuA/
	nVyB0+xSKB+9iKjY2A4zry/wTSRgwTkjgI63NUI6QwHxetiTu0JK0WBXUQNNFmiJAepvd0YSTut
	AzusG0FNNucGHWlJBAl8wFJ/VLPRb5BCOg5fCMulYu6cXm/kB+fjfcdOBPGxFCipOFHKmHIaYpV
	RAwqtpOaOxW2AG7zKOMtBxgLVlnN+O4zSDAI=
X-Received: by 2002:a17:903:13c7:b0:2cc:f5aa:9513 with SMTP id d9443c01a7336-2d74dee93acmr24598805ad.10.1787906644730;
        Fri, 28 Aug 2026 01:44:04 -0700 (PDT)
X-Received: by 2002:a17:903:13c7:b0:2cc:f5aa:9513 with SMTP id d9443c01a7336-2d74dee93acmr24597695ad.10.1787906644217;
        Fri, 28 Aug 2026 01:44:04 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286f784857sm3673459eec.3.2026.08.28.01.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Aug 2026 01:44:03 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Fri, 28 Aug 2026 14:13:36 +0530
Subject: [PATCH v2 2/4] dt-bindings: pci: qcom: add Nord PCIe controller
 compatible
MIME-Version: 1.0
Message-Id: <20260828-nord-v2-2-18bf59d19d6f@oss.qualcomm.com>
References: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
In-Reply-To: <20260828-nord-v2-0-18bf59d19d6f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pci@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787906625; l=947;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=YgWcPqpc0Tw7AwiZ7DA7bpWlNDJxbNEfk70+YLHN3IM=;
 b=6a9qQEeX3hsEP5/9IdXU63jKORwsf3AJ/9gEUD4IpThtQPlKw/iFS6R7s+vzE3mLD9N87U/U/
 cd63oTw9EKpD8l/xhrwVitROD1e91pXSmwuo3d7lBTFFNUMqWpYJpbO
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI4MDA3NCBTYWx0ZWRfX32J26rjsJbUZ
 ipDRAy31E0byb1npG9KbeNFdWthmjlAio8gZJ7sgm7vdn8lOfLFWFO8YIp7ctGMevZxCKejfg2i
 2s65o8tOLoKlDEp7wrQBXUKeawIXWgSYG86HuxBsoLffN8g8q7b3cT9DCXycjy7PDyDT1XGJJGN
 i0P+co7y0OYf2+xp3l7u+JZ/TIQqE+QDLz7rJNo1ql5eIHv/k5Wi6yEMc0dgmGoZeaWNYPqenAl
 d4SoE8yHFbARys8f8lqVjoJ/gvwHfOE3+slcGxXZUwNZ9eXMZtju/BWXWmSQ8Kgw1Q849/X9SBY
 WqLUKvu/qBiuLpMW+fatxCUp1n9eCOg8e4iRnv04lv6bJFcLwsPxj6srGMW9VQ53qdtaFgWDrLN
 wZFP+thrNKQzotsNWZ3250k5gTHn+rC/AjHbhzvaDatr38l9sfvWhvA+2rP8jgNoKsb8fyIRYff
 4prTLS29nX/UiHzUUCA==
X-Authority-Analysis: v=2.4 cv=MONQXsZl c=1 sm=1 tr=0 ts=6a914a55 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=ly1VyIkaSgMpB_u5KqwA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI4MDA3NCBTYWx0ZWRfXyih+Ben4vJnl
 jvY3sVL81AhGpZsGPgpVyw/rejKn+dE15I6XCk1Gv+SVvMiLwNzZBCJ4xIs+hSY9jiuYh84saCU
 YgqWK6CZp3QrYqd+yO8VQE2BZtHxydY=
X-Proofpoint-ORIG-GUID: NSa6sPTJxwL-8AhRhfQny9jhB6Ft8d_J
X-Proofpoint-GUID: NSa6sPTJxwL-8AhRhfQny9jhB6Ft8d_J
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-28_02,2026-08-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0 bulkscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608280074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_014406_879365_5040AC34 
X-CRM114-Status: GOOD (  10.40  )
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

Add the qcom,nord-pcie compatible string to the Qualcomm PCIe
controller binding.

The Nord PCIe controller is compatible with the SA8775P PCIe
controller implementation and reuses the same binding definition.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
index 63630a814f28..b8ba2c4449b7 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie-sa8775p.yaml
@@ -20,6 +20,7 @@ properties:
       - const: qcom,pcie-sa8775p
       - items:
           - enum:
+              - qcom,nord-pcie
               - qcom,pcie-qcs8300
           - const: qcom,pcie-sa8775p
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
