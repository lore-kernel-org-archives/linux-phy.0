Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48B11C43458
	for <linux-phy@archiver.kernel.org>; Sun, 12 Jul 2026 15:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cSMOfOrYHNLodQtw9gqTm52w3CcLcu1dKgfDvDHpn7E=; b=j4rJLbPi773dmv
	P8W3k2pn2jJgHIFkumL2IgZVHENSfGZ9SR/FHxfUVHc+7z1Bu3qMsMMCYC/KyJK4SyJWFU+JKLWLp
	08hntjaXI1OeGuaKLKY4JLvUAsSf+9AAdPQXhMQapTq12IxwKOYaPVNy+rU4h3jRNC7XE9nR6dJ8+
	femjFlWpx6HAhMG4a8/wJZ0tGyFHEBvtN/bYkXk1CecfxcyzBKDlA4vkflmJx2DGuxpfoo7c7MAGP
	oyUZqatn71FqXu7P8Ipr3TV16IXPNqfXz987MrqYvN5oe6I4aLJASH1qxZ+/lNW3LSCJhQ/EUKfDO
	R0cANACSJTiG+9hvjCyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw6r-00000007ZRI-38v8;
	Sun, 12 Jul 2026 15:28:49 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiw6p-00000007ZQs-2dQG
	for linux-phy@lists.infradead.org;
	Sun, 12 Jul 2026 15:28:48 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66CDZW912684057
	for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 15:28:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=T7LzRzdOtGRUoiK/jsLmZx
	DmijLhPZ8dl3wvVuyklfg=; b=jJRdIiL567rIJv7vAlm73Cug7HBSNuu3qFciwM
	uJqxDfp687avA1HEEo0V6m98o33KStttKWB+fRay+FYHcfFF/5DbZ7hWut3cEATw
	tpw6TSM9/p33yIDpDY0w7JoYaGD0B+gGm2Pn3aAzxaNdRJukIV+7yUN59UnNPjZ6
	oFWznRw+9HR7VCKEbNOrW/LG8w73eKGub+wt6/1B+jCzHBPS6fIj841HNPRp/IX/
	eh/B25nbmAtRPEdM1tBmSEvYhaQlTSkJTMCX5R2akBFeFD0npxDNXADTBm9mn5ba
	hVuKvgkAaL00AMIWuo2O4z+G5PlnC6ORmMrt007iYkZ9WyUg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbeehk2kf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 15:28:46 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-385d2703b64so3405637a91.1
        for <linux-phy@lists.infradead.org>; Sun, 12 Jul 2026 08:28:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783870125; x=1784474925; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=T7LzRzdOtGRUoiK/jsLmZxDmijLhPZ8dl3wvVuyklfg=;
        b=T7GnR3yvNc3c7oaU/dzA3X74wWblBTF0iSN3u1KVv+tUgJZ5htlJM3jpm5OvS/oWo0
         vp142my/456ib4tvv3ZFIcFJIkPSuuNeROupFuoY7f8eAQMvsLqqoPV1Dp1jxQ6F87vH
         gX7BmDk1OATt6F6H2V92D+0+aASDfZc4fKklustHnxwdXQs0wlu3VGDSdf+4ij31iIFX
         QC+H3nkrlprGfgLowwEez+5OljgHWEHtDJjpoAgbyheJwhwXwSPc4VuDMzaeB/qHvYZV
         NfWu8v5CNmUZVzpP3YFkqTSwU8opR8E1/Ag/rVtmrHDaQFkO23dnCTiigsY+Pwn+wDnC
         Ao+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783870125; x=1784474925;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=T7LzRzdOtGRUoiK/jsLmZxDmijLhPZ8dl3wvVuyklfg=;
        b=eCgX8DSIcfPLflqRYtuT5Vmynhk6NLcK8Ybs1wMc7/6WuD+NAq0SWipVS5/4V/ewsa
         MBdrKrI/z1saH78pcT9v19U1irp8phiFx7eHEEB8hk6r25ckwn1fFEy3eVMIQq/QBt5G
         WyYlt7VcujpsRzs0TSyxJTurruu4VyAJ0B+pcx+nOxWnzGCeUIEduTlgx2GhW3reaex4
         f1OsCHIJ0ONztuybYr04D+WEb+PTBkNWft5kRQKgg0o5GJDVRTEKBtKs2iXtekHf2GRJ
         2jZiCu3TM7fqfwWszD4wdkZvRhPomsZrqrh8p6ILwzfJPieLVsD5BM+BmTk4NXSV+twi
         XOPg==
X-Forwarded-Encrypted: i=1; AHgh+RowBkgPEhAdSiDoe/J+x36q2TpTjVGbjddR78qUHZcBTJeIzBCC8JnLgxsJI1PdqhoNWFzLI6dSCxo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxhH9ZUPSGnI94T1KTpT/+M05nQNTMFI0Mk3FaKUEi9llrB9WLN
	9MJai/H8CDp74fBMOBYOiuZnCWyzmcqEM++T8tQp4/Nf1Kab5MSsIgEg2xPrjXOYcsxOZ1egTvL
	miXPyNx2HxMyGaJRDXmK7662l6sj4x2LKQcrld76TsOaFEr85rEsSmOxPe0MPN+3g/KdS
X-Gm-Gg: AfdE7cnKbT3GSPHF4CdyyiVn26jrOubBSqidT2eKB6yd2NCc9sQk5WB9zUf+y4JgP6s
	A2l5pW8rCdwBBucW3I6OkfyVjDm0xR0/a5eztFt/nGj1OoXdSZxQB2qvYofcQzAPG6eKCU7cNIo
	ztTOwQuPMydmK3Mwlek6Kh3AI2WBqn/koU8UkeDkn/AGhaKaEj67KsuAJE+zXLCuT0Y4qfdLYj8
	uLtGsHZXTe0lyuztwHC/N/RkBnabLAujOyYMLrIvI03aUn8D/HWfE2YPbP9gtB1lQZjG/lMcLDZ
	g6VfEF0vuLOBlyV5T2IH2mhqwIeYtA2F/hAcxmCxg/ugNJLJdoykl0VpTS4poFmMf0zE0JHSCIz
	cODvaMC8mMm5+NwEaImVw/Ojgl9oHgc4/4S/Wbf8rUcRpp9csSlAu7MwMCgBrzwraFyQLVBQJV7
	5Ns62W
X-Received: by 2002:a17:90a:d00f:b0:387:d5bd:6231 with SMTP id 98e67ed59e1d1-38dc8499094mr4855702a91.20.1783870125017;
        Sun, 12 Jul 2026 08:28:45 -0700 (PDT)
X-Received: by 2002:a17:90a:d00f:b0:387:d5bd:6231 with SMTP id 98e67ed59e1d1-38dc8499094mr4855684a91.20.1783870124518;
        Sun, 12 Jul 2026 08:28:44 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-311935fd091sm41458776eec.24.2026.07.12.08.28.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jul 2026 08:28:44 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v6 0/4] Add USB Phy driver and binding changes for Qualcomm
 Shikra SoC
Date: Sun, 12 Jul 2026 20:58:33 +0530
Message-Id: <20260712-usb-shikra-phy-v6-v6-0-1b3e51bf1541@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKGyU2oC/yXMQQqDMBBA0avIrDugAUftVUoXmoxmFKxkqlQkd
 zfW5Vv8f4ByEFZ4ZgcE3kTlMyfQIwPr23lgFJcMJjeUV4XBVTtUL1NocfE7boTGlnXBVUMlOUj
 dEriX3//5et/WtRvZfq8RxHgCvsau3XUAAAA=
X-Change-ID: 20260712-usb-shikra-phy-v6-2c581e79656d
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783870119; l=2427;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=9AcQqP3IBA61ponBq5aLuiVfoQQyMrsvshw4ON9Sb5o=;
 b=oSeXFglkEXHHF132UQDh6cuFaE/2xaFCbvsvFDtKGzfu9yzB0UxJXgx+ZzslPhZhZvEhN4oAn
 IAkqE2hKhqDDedPeoQgU1cr0Bp85PL0XWXffuBGL4KAqhFiAK+Pw2/U
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEyMDE2NSBTYWx0ZWRfXxoZOVldVJ24R
 +lfV64bc7nkbvu8JuQ0+JN0nHhl5O8X50AIytDvCI8erZ84/QYU2c0UgUTwUUzmXko+L7ceuDbd
 pmBsDBCYokhScrKwEQZJmD++WdMBQWg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEyMDE2NSBTYWx0ZWRfX+eo4ov4e8Dyq
 8A2Eeb71MI3YCS5b9l8RXdYqYdk/D+pdK7laCy7T6d6Vb3F3tuXYMOz6diMtkLXKs5vFxSTD/Fw
 7iCDXEuZ+xM7p8G3VrqdBFXvTgSLlmml/hzxiSOhRjeorkCjBjtXzlnf5r+k/nm2ME4Tuok4mjd
 EiIX7DMTyIw87Kngo1G4BvZnvf2EQ5nL7XM4rQq60HRrzLAuhaXoH1O9bH2cLMSQEr6JSGUi1Nx
 ss0ht1f4RsAWzWU2W2dTrKA+oBxUehvplp0jYZeAuz5K1FzIAr+uo42pvdY7WmidrpwkQcxpTF+
 3qUvkyetmgtajqjeh2y9UdJ3jnKt9U3iPNd5v92bVbtcYaBQQR7Si2noO2h/SOTFAmF4SEm+2JG
 32cphKAvfE3M0blj0FkLooymAt9k80EgceWATE2V9TORrB7kAjIZA7Fl1U4HcSaKAERXImr3eiN
 fHrYDvbDUeh1jwMz8Ww==
X-Proofpoint-GUID: FU0K_ZrKXyfmUCJI-RGJL4K7RZYANAzG
X-Proofpoint-ORIG-GUID: FU0K_ZrKXyfmUCJI-RGJL4K7RZYANAzG
X-Authority-Analysis: v=2.4 cv=aPvAb79m c=1 sm=1 tr=0 ts=6a53b2ae cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1jnLzvbcVs2I2Y3RooIA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-12_05,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 adultscore=0 suspectscore=0 bulkscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607120165
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260712_082847_786498_3DA3F077 
X-CRM114-Status: GOOD (  13.79  )
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

This series adds Driver and binding changes for USB Phys on Shikra.
There are two USB controllers - One of them is SS capable and other is
highspeed only capable.

Changes in v6:
- Fix the minItems and maxItems for reset-names in qmp phy yaml

Link to v5:
https://lore.kernel.org/all/20260711-shikra-usbphy-v5-v5-0-229ba3602737@oss.qualcomm.com/

Changes in v5:
- Fixed shikra specific minItems property for qmp bindings
- Rebased qusb2 driver changes on top of Dmitry's change [1]

Link to v4:
https://lore.kernel.org/all/20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com/

Changes in v4:
- Moved to using qcs615-usb3-dp-phy and added resets specific to shikra
- Updated bindings to reflect that there are 3 resets used in qmp phy
- Add remote endpoints and orientation-switch for Type-c handling

Link to v3:
https://lore.kernel.org/all/20260526184401.3959717-1-pratham.pratap@oss.qualcomm.com/

Changes in v3:
- Moved to using qcs615-usb3-dp-phy since the DP Phy is present although
not operational.
- Using Talos as a fallback for shikra in qmp driver
- Add required "phy" reset in qmp usbc driver since its needed on Shikra

Link to v2:
https://lore.kernel.org/all/20260504170659.282532-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
- Separated the usb controller binding changes
- Updated commit texts.

Link to v1:
https://lore.kernel.org/all/20260430-shikra-usb-v1-0-c9c108536fdc@oss.qualcomm.com/

[1]: https://lore.kernel.org/all/20260706-fix-qusb2-v2-0-8d9cd73b1db7@oss.qualcomm.com/

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Krishna Kurapati (4):
      dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for Shikra
      dt-bindings: phy: qcs615-qmp-usb3dp: Add support for Shikra SoC
      phy: qcom-qusb2: Add support for Shikra
      phy: qcom: qmp-usbc: Add qmp configuration for Shikra

 .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 49 +++++++++++++++++++-
 .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c           | 53 ++++++++++++++++++++--
 drivers/phy/qualcomm/phy-qcom-qusb2.c              | 14 ++++++
 4 files changed, 113 insertions(+), 4 deletions(-)
---
base-commit: 716471df03105a6abdf02727f8a6f096b70aaf98
change-id: 20260712-usb-shikra-phy-v6-2c581e79656d

Best regards,
--  
Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
