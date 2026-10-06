Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33E05CA5FFE
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 05:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b1E5S8a8SNXGQKccWJ+5znARrpWUrZAGjM0fonwpwqU=; b=22wIc2AYYrpoiW
	xWwqZGtANvYHAW21EiBQRPzv9CckCTLVeqrC2aJIJCCGVXGT4dRqxq+VuORCpk/0HnkZ24XdiDz+e
	9qRLzZe6MDoDM3Ia465gcmTgum0m6mUxfgNGjI+O/TqK9OGXzKFJW1D3cNoaiQg+0XHMnSgmYTcSd
	IWMNh7YLd8i2+/5gOoQEGr81EUf6JZiVA1TVPNBh8992L5iZBXgVJONa39KVS6mHZq48koMayGepB
	gQYRfKnbEpKHZm+N0a1On0H87IhuZmn/03oKvR/BvRPjY4Tb1ZDPWws68MZzX/dyO0splZb2a92jM
	pdsXp8yUIB1AvUCUSONw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDxk2-000000004Bk-2slO;
	Tue, 06 Oct 2026 05:29:30 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDxk0-000000004BA-0WZI
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 05:29:29 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6963A4ln2818096
	for <linux-phy@lists.infradead.org>; Tue, 6 Oct 2026 05:29:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=spJCwhc3nrhlO7KaDiqqjv
	9tbKa8IKU0ftE5pgGnaGE=; b=JONSaldzT3qXsN7vPhCN9xz740pmwhF8k75m5i
	0HwMGAoEZ9XY2iTx+nsFyhCTv59bVWa9Xf6ytgw36iw/MnYnYGDMKUvCUEpo/SXR
	EYUombNTK3LJQrwR0F40xB4yN+0U2ZMV6M4fBXYYmUamIYf9FvBn+5hsYXX02as1
	N1bSF27UV3+zZMRAif5unxbS927AwGrsRvgg4BbVIDFTTrSTnj0YtE3ZXYoyGKS4
	UXZysCORViFgzXUqbGUsTglk8bTKAU8OwetJq82dy2Llylx2Jg/LjndsbieMfqzw
	mW54tZMOuPC8rrJIZnY5BKDSejFz8JHR96MLHEp9mba99e1g==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h4fkujd5u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 05:29:26 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-30bcb065bfdso5135340eec.0
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 22:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791264566; x=1791869366; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=spJCwhc3nrhlO7KaDiqqjv9tbKa8IKU0ftE5pgGnaGE=;
        b=PJnMGYm8Fxs06KgHKt1Rlmxqj6k/85o7UoIBU2Ya5gqAJOC2TAsu7KiFHe05E2m/SU
         5CKInLK4v6SR7+uMi/a5jJD4TGhX19vpXVGDXkgs6EjFKnCArrtZ190h/QcIgabRSNRF
         992pZ+zUV6EcvKXn2ieWz684onbgotpcsk81Gh3NtV0reAcpkuxKhOSJNnrEEF5mPyzx
         AVKGDPxzErNkrH7jbhLdy1Uv6LqrbljxahTxUdmYsPV2y6wvF0t2PR+lE8agv6Q1eooh
         k+gWBNyVgbsyNyysgbxCuT3zsWRxkHIGApJHK7Fsl2sErueveS7aYg+4BW8ywZtYt4PD
         4b1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791264566; x=1791869366;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=spJCwhc3nrhlO7KaDiqqjv9tbKa8IKU0ftE5pgGnaGE=;
        b=DfNX40jDG4qtbMnzNzz56XhztV37d+d4hUkV34MI5V70PzoKeWLMlDnc0V7eNeI1Jj
         Yd6XUhdX5Bjd99afI7CnCogmF0yJOMr5RKhHhUz5HN36TWOesFE9QxyycxAhQFojVkpC
         RJy28JMLuGlANnt0oR9DRvzGvlaf2p5p84QC3hrseVkE4BWcaLNGVJLbt5T2cg6Yo4Gw
         Mt+0ZI8I4N+85WHfmZAc2fqIQBK4LQimIFi3CK3NFpZbCovvoKd12d86LbWplb8zg7jz
         UBnU+5DZHY40KOdOfrx24siV3ty0jkzmylPo/4blZPfMUkcfN9US18SmiodEmwtfV/bf
         0TLw==
X-Forwarded-Encrypted: i=1; AKwUvBzveuYyoM0hnWjGVAbAnGmeS/41FOgNpdF4t73dRhbjFK98EklMDZKFDVUcQMrtB5DWGyVsSR2KcIw=@lists.infradead.org
X-Gm-Message-State: AFuF++kqKTOj2zjb1yeUwXmcsmR5g8ScG4kRUKoUdU47u5FyxhJ5QeEW
	joF7uZaQlmJDHElN4XZ/WZQufWdhRQpkoa8N+nHyh+r2YPaRmOqBMY+B1wyIRRF71xei2eqg0Wk
	+rj505EZeuQx6IbNwiGVzWMu0V3UxLPfNzX86KBz8/5Zhn1vPs34IuQjvhABFZaU46psI
X-Gm-Gg: AYBFou2xo63NM2ndv2UijyLR8ZHhj4qEmx4DQOWB6FeRMCQFuw/T93oAJkj/ok+OMJ3
	PcPCe0tdqJHv4kzdVAHj4F8Ujp3QKZdOfRs7+3ig/bIzKbH03TtBd7Y1M5UEV09Qv2HrC9U5ycj
	+8MQajRnjudv7JrTvZ1BDwG2/t5GkaJFJH8oYLgXQ4erQTWz3E62c/js9wI7RJVI96qrMz9LFyg
	gp3ubBfR7H7I0SUCQSBECtvo1B/CPqTVu29ylU2lHyRpT1+GxdAp6nTCJc52DqdxgL1KuLf6r+M
	XTuU07vqQchE7g+5RTHE7GhFGi6vRCa1FU4+N5BAom+IgQTH9zndks7OO49tXi6Ew+Q7XmmnGGQ
	sVLHFt8mqEhFwQjIGAb9j0k6sXyBdQnQBLWRkR4LBo+m1pd6Pz+3TWwggzUYX76Y0plEB8IV1Ol
	KigRG8RQgX0q/blpHd/8+G5AZLSTPI
X-Received: by 2002:a05:7022:7e0b:b0:14c:96a4:b631 with SMTP id a92af1059eb24-15ec878073cmr551415c88.30.1791264565793;
        Mon, 05 Oct 2026 22:29:25 -0700 (PDT)
X-Received: by 2002:a05:7022:7e0b:b0:14c:96a4:b631 with SMTP id a92af1059eb24-15ec878073cmr551380c88.30.1791264565191;
        Mon, 05 Oct 2026 22:29:25 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-15d85781d49sm4017403c88.16.2026.10.05.22.29.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 22:29:24 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v5 0/6] Add support for USB phys in IPQ9650
Date: Tue, 06 Oct 2026 10:59:14 +0530
Message-Id: <20261006-phy-v5-0-cbe9330a6449@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIACqHxGoC/3XPz46DIBAG8FcxnJdmGNBqT32PpgfAcSXZagvWa
 BrfvYjdP4fthWQIv+8bHiyQdxTYIXswT6MLru/ikH9kzLa6+yTu6jgzBCygRODXduZFoajOyQJ
 WyOLLq6fGTSnldN5mT7d7DBu2S2Z0IG77y8UNh6yjaeBroADI2QpaF4bez2mLUSTxKlSpcBQcO
 Ob7uii1RAHm2Iewu93115q5i0eKGfGXViA2ipFaW8kaG2mEad5Q+Yd+t8pIoSxpbwhso/Ubqn7
 o+qGNqkgNKKsESrJG/kOXZXkCKK72Y38BAAA=
X-Change-ID: 20260820-phy-664ed5ec0292
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Authority-Analysis: v=2.4 cv=HtPjiETS c=1 sm=1 tr=0 ts=6ac48736 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=tpprtx7nRKxrkFoMJnUA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-GUID: _3ySNFCL0FA_e6394p2MlN_WZyikhCrN
X-Proofpoint-ORIG-GUID: _3ySNFCL0FA_e6394p2MlN_WZyikhCrN
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA2MDAyMSBTYWx0ZWRfXyktiDCnTxcz/
 e/EyoS9Gq8IsHpHnLq6C7ZYVME2Ovnn6U1WwL92Qs6j84dWgYD/4Yy7F+WexK9wF6YNTIXsRkQA
 53r2ONHFRr1pc+abnXJKytBv00m+AKg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA2MDAyMSBTYWx0ZWRfXxiHs36YLWg1k
 Je/3BE0DD4CPE3jc3y2VIbKpe5Bl4Y2av63mi2QYVqnKQfN+ge19ThoMKgQlrIgUqbtlYcrk0Qn
 00ITTENkpIvAFjtyGXnYAKsl7N4Fq3SBB6LILI6bT4gfnRfrFpNGDy0VwQ7hmSCsFYWLdJuCBE2
 Q/UBC4aafMpNyonNPKODmQevreYPEEKIyXuRq/zyfiakkq6wMYnUU6slcmoLaedy6uhozyRmHEK
 mPMKiiJrrANQdgPqOwJ8GjwTHUu6+UXBzoA+/ajMq2txKTika2/WOERixsv7L5DlNSFUnODQ7o7
 Wi7RJ+aFe5nkxB6aVQ2V+OdLzQGDzjnN1UnT6I1Do6bbBmzjU5wUe6THBA7IJM5IMZPU6Ogakqd
 fU23i3wniRgaIzsBeJjKtubR270zYR5VFIRFZ329hm8mFKBeTeoI1wn8KN7jHGtDfnCy1J8VTda
 egwoYK1TOWyQ4eAUKDg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-06_01,2026-10-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 clxscore=1015 phishscore=0
 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610060021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_222928_294245_AC715DE6 
X-CRM114-Status: GOOD (  13.04  )
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

This series
 - Adds dt-bindings and driver changes for the high speed and super speed
   phys in IPQ9650.
 - IPQ9650 specific init tables to QMP super speed phy driver.
 - The Femto high speed phy driver is refactored to accomodate differences
   in the init sequences between SoCs first and then support for IPQ9650 is
   included.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
Changes in v5:
- Use FIELD_PREP_CONST to define FSEL_24MHZ
- Change commit subject to 'Fix order of arguments to qcom_snps_hsphy_write_mask'
- Use data->{pre,post}_tuning in qcom_snps_hsphy_init() instead of a temporary
  local variable
- Pick R-b from Dmitry for two patches
- Link to v4: https://lore.kernel.org/r/20261005-phy-v4-0-b04c4123ecb3@oss.qualcomm.com

Changes in v4:
- Rebase to top of tree
- Split 4th patch 'phy: qcom: snps-femto-v2: Move PHY init registers to config tables'
  as follows:
	phy: qcom: snps-femto-v2: Fix qcom_snps_hsphy_write_mask argument mixup
	phy: qcom: snps-femto-v2: Move PHY init registers to config tables
- Link to v3: https://lore.kernel.org/r/20260924-phy-v3-0-088e7be0cfaa@oss.qualcomm.com

Changes in v3:
- No code changes
- Rebase to top of tree
- Pick two R-b tags
- Link to v2: https://lore.kernel.org/r/20260901-phy-v2-0-cc93d2f3b1bf@oss.qualcomm.com

Changes in v2:
- Pick one R-b from Krzysztof
- Use qcom,ipq9650-usb-hs-phy directly instead of adding a 6nm compatible
  and falling back to it
- Change pre/post to pre_tuning/post_tuning
- Use array count instead of terminating entries
- Fix value/mask mixup in 2 places
- Link to v1: https://lore.kernel.org/r/20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com

---
Varadarajan Narayanan (6):
      dt-bindings: phy: qcom,qmp-usb: Add IPQ9650 USB3 PHY
      dt-bindings: phy: qcom,usb-snps-femto-v2: Add IPQ9650 compatible
      phy: qcom: qmp-usb: Add IPQ9650 USB3 PHY configuration
      phy: qcom: snps-femto-v2: Fix order of arguments to qcom_snps_hsphy_write_mask
      phy: qcom: snps-femto-v2: Move PHY init registers to config tables
      phy: qcom: snps-femto-v2: Add IPQ9650 support

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml        |   2 +
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       |   2 +
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c            | 118 +++++++++++++
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c      | 193 ++++++++++++++++-----
 4 files changed, 268 insertions(+), 47 deletions(-)
---
base-commit: 15551282e82db772bfc862f96a8abf14a60f4ea5
change-id: 20260820-phy-664ed5ec0292

Best regards,
-- 
Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
