Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C63D7606A31A
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 12:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=THVGr83m;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=BYAv2km3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=BD58vS74
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=b0w6k3e3IrwRsoHxLUgJ5PIBCPqgypk0PZAP5f/k0cQ=; b=THVGr83mKjbmHMZkcILnrLGKGA
	4jTMhofcuAvmEJSpiZRTC6n57MoahPhh7DSt1lowPzY63mWgFl4CcN1p+fQzN9n9cD3kFWP5dqvS7
	9bSFWQMEc3KI/4vRVN9OweAHiBPfvlKypHho3LZ6l9fQdNtU4wjNrR1Mxo50qYb60umPCNjui/H8o
	6yOjKfhBwIRrQI01Zy64dcNXgZAPQ65NPOHe4ofYdHJ6LZ8dMrMoukUesq6afHtuFJuwFSLdnLhak
	tLvgK1XHgx8AcWEPnGT5WxDqX6n7HVyKsQ9oKYUCrHqSZRx+s+EVrrQn6uR9uG3zuxwOId1g1Cz9m
	hB0EyVjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlxA-0000000Bh8g-0z9N;
	Fri, 30 Oct 2026 12:43:28 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlx5-0000000Bh8I-2UJE
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 12:43:25 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69UBFvrT4116364
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 12:43:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=v3y02WtQy7EFMYSobYs1C0
	IhrIzB4b0G9kvwXB6qTfU=; b=BYAv2km3l1v6m4Tj5aaig98jJ3Z54crMH9120u
	pJe++LSGHLYvh/YF7pCkcVpTifWGbxwO5a5FwCkV9BF+vHocv/jbLvtnzqi2Nb2R
	hlgDThcr4a5tIS+MAtu5SP/9jbcyAd0MQrzAnWjrrgnxwsIe24HkxznO+8xqsuNK
	8/xYNdD+u3nna1g/FHfle+ATZJbYKvUMatE3Nb8E4QwFQHXiIC+R/8U4un40a+qR
	XddYKt8Yb5eOU+c/Bdxen6vT7qf4NpTbQJ0Og1KZnuN5FKdXi1Ued49dKYevTJNK
	d0iyfaYflJW+FQPmZi8EYglDOhc8orcz4Vi71yEoqzHhalXA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6rk4tb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 12:43:21 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2e93f67358eso8703035ad.1
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 05:43:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793364201; x=1793969001; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=v3y02WtQy7EFMYSobYs1C0IhrIzB4b0G9kvwXB6qTfU=;
        b=BD58vS74jZOEimPQ72EFiSZMA1X0kdjwIc43OGIH2MTcFIsa0l2Sk01qdArAUwR5C8
         MS/TMTaI3NdEebXRWpTx7kqdsAQPpyzPMoXmV09GJWNjKO9ny5pVd6PZG/Y013Js4/TW
         P/Tg+e71qBuAfmtv3+1mfaYmrxBukthl7T0j31lVklXwCig/fcLpXwZDhTW72nT4hnuR
         fgBsigw7I7boSq7f4cPxPBShkkjlfxTFepiiGMabXpJOzTTEIWRXVNAdtX8vnAGci1N+
         aWzzQRsC9jhvTqWafSL1s1N+Zoipv+wDMBCDgMGjZ9RuBGHga24Bz1ntvaS3bLGQyMOq
         4T5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793364201; x=1793969001;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=v3y02WtQy7EFMYSobYs1C0IhrIzB4b0G9kvwXB6qTfU=;
        b=bnItQxy+ye1wX1fxl4BQevspscS23rYQTob84Drm/uQ3KbTUtbJix9TJRLuM82/EWw
         OQ0e5zq6KiLhtGZo/YC+LD/OlF4jyc7I7y5zNlCe9Z/Eoeb3BC6lWlq3HuJpge/OyOmx
         ey20GVwyrNd7aaYCvVUnON3BIAtot8HTBX/V9hh7s6pvsRtw8AOWAIyWFd9Him4aZ7YK
         2U0rJLAkBaqKn32zU735GT6Vw7eSYz0ssoY5qZKK7m6Rwz/09cjvGtR44W/mDF7Te5b+
         /bi3zkHfDZcE+dHfbO/94iw7+iElVelSKMYJNA/RCCUnUmCfKkqCB46RRxdHZ2bYYHzO
         oGuQ==
X-Forwarded-Encrypted: i=1; AKwUvBwOC5t2bLQ7WjdZ/PZKqbUTP0ClM92PL5okl4AfWtYV9cZPlHYemCh0RxNgXmr2fMuLhocoEANvakg=@lists.infradead.org
X-Gm-Message-State: AFq9FYJwe5QnWSmOWMHzI1H5PCgHZNxlR7TSFeo8qVwPM0W+S4T+MsmV
	R+PuUjousc7ZmcqQDO0o043PZUhQJ8/LR9W1dvcphZxk+KBYqWM3QH4wSK3GzmIDEK3OaarOYBm
	KoJD5n7gClR8nkX+BiAe8eLL2IWNJSKeT0ZyL/l9ahiO5K4Kpg34TcPtI8vhSz/sn8nTw
X-Gm-Gg: AYBFou2wAbMivFDE0FDnBpAWxGMpLOm3kJe0nIC8Y51v8PpMDQU5Cl635Ug8GEmcHuk
	FXJTeaeLIJXHhA5IDOcFlvsE3hScp3Fco3yRIofPL7b/Me8BD+XgzD2TfQX6qMRHjtanZ94baf6
	CrBzPY2bqYO58Q56gKlZ4cGk/ycnj776zbgtWk85z3/nMYNJA0vpq3dRqTolDVs42/rfcYOxHNE
	L0QunmJfBHGcF9RuBLUBhFakPlG9Guj1rCp9xx9cF56ukP7sdL+DV/sl9mp8T25veY6VYkxGR4c
	OXDCrHB9EyDsalEg4rYIJNTajlEfbCch+ov0fpJbUsMau6G3CHlFnRwD7Y5cu7IcNuyRiijMumv
	cuNMJzMDxP3MODShI2+70z702xGnd98BHFyEFYnDsG9BxLhqRYnYg904qsli6zq8tvnVlPRdjQu
	NiIBE=
X-Received: by 2002:a17:902:e88d:b0:2ea:8442:db72 with SMTP id d9443c01a7336-2eb364f19aemr22543285ad.54.1793364200941;
        Fri, 30 Oct 2026 05:43:20 -0700 (PDT)
X-Received: by 2002:a17:902:e88d:b0:2ea:8442:db72 with SMTP id d9443c01a7336-2eb364f19aemr22542955ad.54.1793364200386;
        Fri, 30 Oct 2026 05:43:20 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eb3922f5dasm6450075ad.25.2026.10.30.05.43.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 05:43:19 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: [PATCH v3 0/5] Add CAMSS support for Qualcomm Hawi and Maili
Date: Fri, 30 Oct 2026 18:13:00 +0530
Message-Id: <20261030-hawi-maili-camss-v3-0-9742bca8cef2@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANSQ5GoC/32S0WpbMQyGXyXkeimSbNlWr/YeYxeyLC0H2mbNS
 bON0nef08IgoezCBhn9n/RLft2uflx83d5vXrdHPy/rcniaQfqy2dpen374bhkz3hJQAaG02+u
 vZfeoy8OyM31c113nYTkpgA/aTtnPo8fy+x357fuM98t6Ohz/vFc44+X1P7Az7mBnvfdMzil7f
 D2s693ziz7Y4fHxbl7bC/NM/zgI+BmHJidMEhENbWKfcN4+mj3688u0ffroeNt19d0laTndbzS
 JCUODQpiitIIDIAQqiZqqEgYNYX33rSfbz2ndb2ZPLVxb7SHsJIgB0rtXFw7lVCyZJ6nXqp5y1
 VHAcuVIkLhDdqulZnQI7DwhzA2uVaqMjmxcpI2UiV2qWEOI4CylYW2aSu7XqtmGR7N5mM1LXLZ
 HVmPKkDgn9OEZNN/Ucq41MqKZDfBiIywGsGuxHpa8VTdNN764eAQAMUrLXnoaWlKi6m7oYaM3l
 LlovFbV0roLqcHIOUvCWkYM0zEGTZelosxK5UYlAk0ztMHEglC1zMq1waiYq43RC82x0rjxZWK
 UpjmJbGnmK9SRPHOqqVtJc9sWInStGkQ95v+CnlO0gG4kA3JmH70OV+91IvvNDKPPGdTixlinK
 ca5VgrPSpobacmSybDw/J5vfwEgP+6YnQMAAA==
X-Change-ID: 20260923-hawi-maili-camss-b5dc43a00ed2
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793364192; l=5721;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=lsMwYHuyept0TY3G1YvNs+p8Iz3C6tF1vslYFSKw0VM=;
 b=pnWdy0oGgt4NBHEuPPXjYTiu2Dtqebe2LXDZiG5LXd38FTl8q4HOFxYtX5igdHTNXjA0Q3doH
 fJ6AY1mc807DS+GpLcOrzy8c0dH1EL4AA3rd1E7udAhOa+gAudMgBhu
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-ORIG-GUID: MNltX0NkOaL1G74fWb3L9QxTRBZ-la5U
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA1MCBTYWx0ZWRfX2vcb1G0ALR90
 u5Lzk8PGEC1l5zFmDXaEdlgZ7PVBLYQWfF5aHLWLeWE3kQGZpVnH2EltIgD2zfETXK7/RGvdwDh
 uUd+Dcui9ymhVVELGUkou/eHZiF3hwk=
X-Authority-Analysis: v=2.4 cv=PIqaavqC c=1 sm=1 tr=0 ts=6ae490e9 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=E40xv7DK0V-5u9Ck0vwA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA1MCBTYWx0ZWRfXwSlP1POoVTOl
 sKx9Kj1u/Ub8EgbU1E/vQCnuU/6IwZ4UtFQ0dqU/gVJkZcGR62vBScAa0oYGFTz2XZmfUfjFGzS
 7LrX6EOdcgX4R4YOEZyupAN5LQLbZW+ZbpuOR1cqgmNlfE9xDXOHgSqaBVOdR9ss0OEyEMBtbKt
 vXtKVzj5YgmNBEHbCFLBk87Qeg24nAMRX9+p5plLckrZ00/I7CxVSmAI4XFl1rdPIrMGTcrAVbj
 JV2JpjtyGfvfSzr55X6QQtgk9YCxHfuolxARQHHJhwwkkom85nbfopi8+BEFVk5oI+eX/70OP/X
 sUp7U5fe7kS91b7Dr5eWjfXBSqIv0gQm6fgH5/HsOEWHpHeLBL32tT1iL9Hffc9WqzQL9pqaW24
 vclK5rQxEv68F47OC4LYYsehu7xvewi4ye/HfRjSOrhsTk8rlakP+Ot8WPzU/A9xs7Mjg1Jy1N9
 yJQQBX8+QYPX2OEua1Q==
X-Proofpoint-GUID: MNltX0NkOaL1G74fWb3L9QxTRBZ-la5U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_04,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 lowpriorityscore=0 suspectscore=0 phishscore=0 adultscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610190000
 definitions=main-2610300050
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_054323_644545_CFED0A46 
X-CRM114-Status: GOOD (  15.60  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hawi and Maili are recently announced Qualcomm Snapdragon SoCs [1].
This series adds Camera Subsystem (CAMSS) support for the Qualcomm
Hawi and Maili SoC's.

[1] https://www.qualcomm.com/smartphones/products/8-series/snapdragon-8-elite-gen-6-mobile-platform

Hawi's camera hardware topology:
- 6x CSIPHY (CSI Physical Layer)
- 3x TPG (Test Pattern Generator)
- 3x CSID (CSI Decoder)
- 2x CSID Lite
- 3x VFE (Video Front End), 5 RDI per VFE
- 2x VFE Lite, 4 RDI per VFE Lite

Maili shares the same IP as Hawi. The only difference is Hawi has 6 CSIPHY
while Maili has 5.

Used following tools for the sanity check of these changes.
- make -j32 W=1
- checkpatch.pl
- make DT_CHECKER_FLAGS=-m W=1 DT_SCHEMA_FILES=i2c/qcom,i2c-cci.yaml dt_binding_check
- make DT_CHECKER_FLAGS=-m DT_SCHEMA_FILES=media/qcom,hawi-camss.yaml dt_binding_check W=1
- make CHECK_DTBS=y W=1 dtbs

Dependencies
------------
[1] https://lore.kernel.org/all/20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com/ -- Kaanapali CAMSS driver and bindings

Patch grouping
------------
I2C CCI bindings part for maintainer Loic/Robert/Andi (1):
[1] dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible

PHY driver part for maintainer Vinod Koul (2):
[2] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi and Maili compatibles
[4] phy: qcom-mipi-csi2: Add Hawi support

CAMSS driver and DTS part for maintainer Bryan O'Donoghue (5):
[3] dt-bindings: media: Add CAMSS device for Hawi and Maili
[5] media: qcom: camss: Add support for Hawi

---
Changes in v3:
- Rebase on next-20261029
- Squash Hawi and Maili CAMSS binding as a whole - Krzysztof
- Add description for IFE and IFE_LITE IOMMU in CAMSS binding - bod
- Correct the lane count variable fallback path - Sashiko
- Add CAMSS top region to binding and DT - Loic
- Use split addr_update/reg_update in CSID and VFE 1190 - Loic/bod
- Add SOF and EOF enable bits with top level RDI status offset to
  allow their corresponding interrupts but not configured on - bod
- Move the common CPAS/GCC AHB and AXI clocks to the pm_clks array
  drop them from the VFE clock lists - Loic
- Use the GPIO function with bias disabled for CCI sleep states - Loic
- Collect RBs from Loic, Krzysztof and bod
- Link to v2: https://lore.kernel.org/r/20261013-hawi-maili-camss-v2-0-fc93222da89c@oss.qualcomm.com

Changes in v2:
- Not an RFC anymore
- Rebase on next-20261012 and drop the external CSI2 PHY series dependency. 
- Drop DTS patches; they will be posted separately with Maili DTS dependency.
- Collect Reviewed-by from Konrad, Abel, Bryan
- Split CSID and VFE 1190 into individual files rather than in separate
  combined Gen4 files - bod
- Remove reduandant is_lite condition in CAMSS CSID and VFE resources - bod
- Replace bias-pull-up and bias-pull-down with bias-disable for the
  SCL/SDA pins of CCI nodes in TLMM, as internal weak pull is inproper
  with existing board level pull up resistors - Loic
- Drop the unused reg_update_after_csid_config flag
- Add lane count fallback path for CSID RX configuration
- Add Hawi DPHY support by tuning register table, which prevents
  potential stream stalls and SMMU faults.
- Add a standalone Hawi CSI2 PHY compatible and make Maili fall back to it.
- Resolve conflicts introduced by Glymur in CSI2 PHY binding.
- Link to v1: https://lore.kernel.org/r/20260923-hawi-maili-camss-v1-0-cbbb42e534ef@oss.qualcomm.com

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>

---
Hangxiang Ma (4):
      dt-bindings: i2c: qcom,i2c-cci: Add Hawi compatible
      dt-bindings: media: Add CAMSS device for Hawi and Maili
      phy: qcom-mipi-csi2: Add Hawi support
      media: qcom: camss: Add support for Hawi

Nihal Kumar Gupta (1):
      dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Hawi and Maili compatibles

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml      |   2 +
 .../devicetree/bindings/media/qcom,hawi-camss.yaml | 314 ++++++++++++++++
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml       |   5 +
 drivers/media/platform/qcom/camss/Makefile         |   2 +
 .../media/platform/qcom/camss/camss-csid-1190.c    | 417 +++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss-csid.h     |   1 +
 drivers/media/platform/qcom/camss/camss-vfe-1190.c | 217 +++++++++++
 drivers/media/platform/qcom/camss/camss-vfe.c      |   2 +
 drivers/media/platform/qcom/camss/camss-vfe.h      |   1 +
 drivers/media/platform/qcom/camss/camss.c          | 229 +++++++++++
 drivers/media/platform/qcom/camss/camss.h          |   1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 136 +++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |   1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |   1 +
 14 files changed, 1329 insertions(+)
---
base-commit: a39c950806213f6861d00f90729acaaa21f2d95a
change-id: 20260923-hawi-maili-camss-b5dc43a00ed2
prerequisite-patch-id: 6108fea87bf95e2911f09bbe7e95fa536c3ce397
prerequisite-patch-id: b347ad60c475f3035b04ec76741e0f1b5f095580
prerequisite-patch-id: aa51e15c5698d3425e979c810ff54968178a364b
prerequisite-patch-id: 5faef8cef855ce6fa00e2c7f10f125431ede40a4
prerequisite-patch-id: ae577f411cccd0e6cdfcfd05ea6cbfc3e87eca37
prerequisite-patch-id: 56eff00251984e6b3da63327eec1efcdb8194ef1
prerequisite-patch-id: 768be92ac0d44493176dfdcaddd24256719a3761
prerequisite-patch-id: 9908a408d5259107a6f00780d7147cddb625b02d
prerequisite-patch-id: ac9c23e579f4c3078a07d3e45373bc63729cf992
prerequisite-patch-id: d22bf3220b43f8f0bc29d0445edb7deaeb7e57b4
prerequisite-patch-id: fb4e676ec517317515f02fe4a2a482a64942c165

Best regards,
-- 
Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
