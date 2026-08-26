Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B53FC61DBD
	for <linux-phy@archiver.kernel.org>; Wed, 26 Aug 2026 17:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z8ME0PL4dh5Ly/2TrgOM+POtLV5tUQReeKdmmzButGA=; b=yYSNoAMnvrdK2A
	ODRodVgkFIT1W+dPFaX/yfWnl+wCJmoXWj9MdVgFcuaWRrVfxzvUMcuoKA30Q9NhvmyaE3jpL/A6R
	EgcT93iEht6XmpOGlQGUrl8dSs69gHFgSpMH8xfggqAIEu0JLLGowTkMt523QdEmxs4jAbygGn+ZN
	RSflB57ebWOmWOi2fBDpA9w3nPwidnEG52T7fqw9TjobZvI/Luk64oH9p6huDqK6n7qbSw7JVYj0R
	vH07H3bBWLWnGIZ/cyl7ka4EE2/Zmd0hIRBB3mmVkd17bHvGlGug4Wlusc/v6LWFpagHYsNxTpD2V
	dDHX+fAKIdSut15z4dEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH2M-00000002n3S-12DE;
	Wed, 26 Aug 2026 17:03:42 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzH2J-00000002n2C-0p7P
	for linux-phy@lists.infradead.org;
	Wed, 26 Aug 2026 17:03:40 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67QGuhi91408705
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 17:03:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NrqpIZV2QBG7L0QYtbs8RatDKP6IxZ/Xed/zIM03jdA=; b=B6RdE/hWm9VQq8Wh
	ntaZ+Hlx3py/ZpDkiE6W2YcEyOrA4IKhtfTPTJU9NAlBpHjGb+j2Dsj6RoKR0ItF
	wc3wR/7ED3dBZE/GiCKgX18XrvAfrcQ2uJVLIHG6Nugk8nbc12B2bXfoQGbhJ5dQ
	60UHz5idSiROq1hEEMgAbYN+C3NJCQzMvX8YfjuULLpftVm5MtxmAEYLStYWNQL9
	lz50OmUKmU1mKtXxnrS/g2H9UWIRguGnGRky4jUKO1WNXt2k3iGiVN1P8K1zCBm6
	0jWWXaRJL2y6wQGLedtRFhb7I32fSd7IcOzAud0mrD/ZBmfx1xBieatavmy/RHWF
	sLlpug==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g9x2n1n3d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 17:03:38 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2cec4226c70so15678305ad.1
        for <linux-phy@lists.infradead.org>; Wed, 26 Aug 2026 10:03:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787763817; x=1788368617; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NrqpIZV2QBG7L0QYtbs8RatDKP6IxZ/Xed/zIM03jdA=;
        b=R4hWjORIrpcpT+b+LKPJ6Vfd9psZvJMDjZfzd3mXe3OMzwqMn8b5ZvhnR+mj7K7gGt
         IjU+zoaW8Ge1J6VyBdqZOn5qKt/eNZW9qtVVXKC9cg16XjwCKLNoBtqeGbA7/4Jwgtrw
         swBe4J4FrqT5R2ygTD8sVgdBYzKUxX1lDthHlmZp4rGKzGgmuS9gpyzst2CRYocRmbUK
         B0+lE4DGIxNdzp6O9EEKIaGDy+N/q5OXZgbq343mK0ZXRqpAvQ21dWinOx/K96qHEPbB
         b0sEad/JmDkBBGbywxjJhB1+0aMeZ0GvKYNVbhZauh5S4Amk3D1AQRQdjLkVr56lNhiS
         WW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787763817; x=1788368617;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NrqpIZV2QBG7L0QYtbs8RatDKP6IxZ/Xed/zIM03jdA=;
        b=JqIrGn/0UYkbgboWqPGhDEA9+1oLNkPH37sqoVyu1HsE0xzjr0Ih4svIDgoxQlG+Sl
         +4Y5gX/Sk27umDYmfEM29S538wiBoaFrwdASi9Z4NS57iZ8R3R3kemUzAo+IyyZBz/cy
         Zky/spaHV3H2Y7vVc8/qFukf33PvVmnaKPEyJVAf9PiBSu4kdRzxqsIxTmeOcJT3XDKK
         w2Uln6L5whf4pT+AV66p0HPpIyS69hE8pr91Y7bigi56Sq0dnVFBJ1xAxZXoUldJDtT4
         pHAj5vWP8pyIpRipIQaEtJi8kZx7yGKvpCHcx/qrrRcAyyr/Od3zYDJNabfMmgEaN+OJ
         6wZg==
X-Gm-Message-State: AFuF++kJ4bvP0/GrAGEtNA9D2V/0Krv4mt4BZq8G1DFky6JQqMSLbB5a
	LQ/v2+JcK3Cv6dpefggUiFlh7PrbQqTPVyLshi9u1maBOJ3KJocyylgPx8zI+woo/mA1mobeDGB
	An7+c7X2efZNd+cNz3QLMFzf8n5DXV/yLJjU5ppec27fN9MDXZItzPWSVR4Yw+jWxU5aK
X-Gm-Gg: AR+sD10CQ7RN4oCEfyOtVbnjsMwEOvpDCBKEYbqIaoODxKH/snqKLSIsIz5+9q1hfuc
	u4Rur05EwKd3oUWnyeIhbeAzh4SpfoDhCVjAoaAaDPnx6E6iQx1RjjZ1sZqNgM+G0jf1KHmrmf5
	SVvl28mxTw0mLlweK/NmiAJlT+Nsmit7FQ8+76u8TVBjrHSpxs72IwEyVgNpy+NLcWu4DzBpGEQ
	uuGHd4n4PYmC73AUQVKJsJcMHaTruBAEHCr3i2hW95AoEg5HKoIOllhEaqTR+xl5j30yimN5SxB
	idSByIOytSffgSAABF9tVwIxoVHIwQM9WJgypXx7mUt0NOSwbf9N17kqU/zUyf3NSvc3pv212hQ
	EkGh4iFb9f04ZHWEXHDSICVzP7YWaVVYP3WIDPkHJGfu3KWW37x6DKqmraDoLFKF7IwbdyQ==
X-Received: by 2002:a17:903:94c:b0:2cf:8131:75e8 with SMTP id d9443c01a7336-2d707b61486mr154252825ad.13.1787763817270;
        Wed, 26 Aug 2026 10:03:37 -0700 (PDT)
X-Received: by 2002:a17:903:94c:b0:2cf:8131:75e8 with SMTP id d9443c01a7336-2d707b61486mr154250195ad.13.1787763816258;
        Wed, 26 Aug 2026 10:03:36 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d70498ca3csm9938285ad.31.2026.08.26.10.03.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2026 10:03:35 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Wed, 26 Aug 2026 22:32:54 +0530
Subject: [PATCH v6 4/5] phy: qcom: m31-eusb2: Set phy type to EUSB2
MIME-Version: 1.0
Message-Id: <20260826-eusb2-interrupt-v6-v6-4-ae2601cfa80c@oss.qualcomm.com>
References: <20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com>
In-Reply-To: <20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787763791; l=943;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=/tVXMe1X40jBRWP2+3mc6TsHLn4raV1bdUbMpmk1/+4=;
 b=8AUWnAkBRSOaoJzjamgva0txDu5cduEp6C4GlNUbwuGYz4bERAge9awi7ni4Px4gFenzCk3KV
 iLYfRKBeDS5ACGWk5G6PmSq1X/KUgugw/DIU+DoTlYfnxf/ZFDPgogk
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-ORIG-GUID: DebiS_pC95s8H5BKeE4HZ-h7saztE4Mx
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI2MDE0MSBTYWx0ZWRfX/5FVBgs9ZOoW
 9DPUSYqmUlDkZRJ0qao0bzP4kKz46DNFKRMECAPLq108yRw/cSxc5wuWOoaBRTkMu2z8ikYWhpp
 KKFlt5LUAWi5bl4yQEQKoeb5h262Aac=
X-Proofpoint-GUID: DebiS_pC95s8H5BKeE4HZ-h7saztE4Mx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI2MDE0MSBTYWx0ZWRfXwrKFMB2GKhgG
 oJ+EZSohRqJ8hEFA4g7nGAxWCH2Y0fkSKI1CnDer+YAQWlw/eckUeYvI1P8ImNc57jy+htIuS+L
 nxthEIXc18SJfQyNp8gltBAscI6VcnK5F93rcHmavjCsySKEZRtALiXYRGEb/gwjKFHD3zZee/Z
 ZgSYjMJiE1PjMnB5jacwFA/tKwEZionfbMo1R5KuZz9Pmf2ekLfLLqQL34U15NRx9YZj+400Acq
 EB6/V5/5vit0d/MvuUray6PLZ/u8bNTLtOBRJbzMmIqr8fvOlNQ/Bl71QIEsIFtZHTtXMRXd+/v
 VHEPI/Jl3hZIViNxD9pgTgwgkLWXaNNDuOFQFy+hmEWD89HCuDOzy4LgyOLQwkSouhizX8KISk+
 5MKztdq0wE2xVWFYXJZb/CAUhXdGOYTB3dRiLKfmgbLHFrypEiPbC8xt+clQYtFDN9ZLLADzwEq
 Z2j9H/3iLMAnE0g1u2Q==
X-Authority-Analysis: v=2.4 cv=PPQ/P/qC c=1 sm=1 tr=0 ts=6a8f1c6a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=GXgYrK0FegosRrsl_UwA:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-26_05,2026-08-26_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 malwarescore=0 lowpriorityscore=0
 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608260141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_100339_681603_4343BEB0 
X-CRM114-Status: GOOD (  12.01  )
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

USB controllers like DWC3 are agnostic of the kind of phy (USB2/eUSB2)
connected to it. Set the phy type to EUSB2 to let the controller know
the phy type when queried during its probe.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 0bec8657149c..7e6b16b6952b 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -277,6 +277,8 @@ static int m31eusb2_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(dev, PTR_ERR(phy->phy),
 				     "failed to create phy\n");
 
+	phy_set_type(phy->phy, PHY_TYPE_EUSB2);
+
 	ret = devm_regulator_bulk_get_const(dev, M31_EUSB_NUM_VREGS,
 					    m31_eusb_phy_vregs, &phy->vregs);
 	if (ret)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
