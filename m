Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28C8ACCF9F8
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 03:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4uktLpHB+Ub1PtVnXBNhfNe7u2PKYgdtHxF545gFq1Y=; b=b7AAEwKw6AuAf9
	+4WbMqsDbAWAk0zRAL5SN1rqP3WudAFJSgsNV6c1g7r8IR8PRf2C7bEpP3c8caZQBzChE8gUxSqy5
	xDo3EUvulLILBKeN2ey3jbNO8GhuljX1bnJjiSnnqlssK+qTnn/XrLjUxdys3/VXb5c4sOav03tKk
	B+NUUilPQsfmqijVeU/LNQ+likjgnOZGY01LO4PPoSOwP4Z5IK0ruVUGD+jqqMe36OW+lDKK8UZEu
	ITQlu0aSE9g5gXAqpVu795Lrs9T3+NTUHC0iBQGm5wVJ3daHdCRzCC4+4ORYQu+3Vr6Ipj5jUX1Y2
	QUf6K1kil2wO2Hbsedug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG7PB-0000000B1f4-3mQb;
	Tue, 04 Nov 2025 03:08:21 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG7P8-0000000B1e9-2OkZ
	for linux-phy@lists.infradead.org;
	Tue, 04 Nov 2025 03:08:19 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A3H4NEs3616850
	for <linux-phy@lists.infradead.org>; Tue, 4 Nov 2025 03:08:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=vqo3axmtYai2epioe5STd9
	sXidmtUtS5fufJX0MIH5I=; b=hgox6UKv/PG5c/rTeXtHJ/cJ5/dtFSlCjwZXS0
	1ew/AFiheVx0hdHDCo9EHdGwiQ/SkjLeuVyq+1mvflEtb5gKg9W63be8wV99GzD0
	UNKglHxeYhzXulsUdImBBKzfvw5katWN4/7d2HJnCVjNe/ns8dEhaeU9WtYHZW6l
	u9uKqWXyTwtrkr2f/Sa6Ye2why0hy/u2hiYdcIehs8qPYNOM3BCwlVagsa/aPOJP
	Uw9kzxJOumvWW20dB/buxH5qqU1aRnlijEwwjs0vh49BV4Oe2IAdnV3/Gky/juad
	S1h1hJzLKHXBq1XvYQNuKIqsm+GSGjRxXlbdIyAC8ROrjEog==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a70fhse52-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 04 Nov 2025 03:08:17 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-294df925293so52242545ad.2
        for <linux-phy@lists.infradead.org>; Mon, 03 Nov 2025 19:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762225697; x=1762830497; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vqo3axmtYai2epioe5STd9sXidmtUtS5fufJX0MIH5I=;
        b=EaOv6Tg89TPXTI41y0DdCE4XAMeJCP9LLGiLL4IGitElnUAduJyWInbzo2v2X5/ZKY
         ev3buxIrE6tJmV+0HRPhjj691gY8tlPwvg/U1wZz13odmefYTcclt+SMo/nIMKCEP84b
         FFtl7gIoMhfNmUO2bJOHSe7qpNkuXEvuaLo1gA86cXAgF6oBf/Pi1ERwJiAfpkgSK2Hp
         qOR3WdBGtZoZj0ZAS/mmwb+y8NhCZroCkjbN3CtBUi0EsaroPnDXQQi/2VTKMBtbKwOi
         VG2CZwi5cllSFfQO/UpUEl5hf8DE1rcr1hW9GhFixML5lhWAJb4Ne3XdEw1AbpViqh3M
         0kcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762225697; x=1762830497;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vqo3axmtYai2epioe5STd9sXidmtUtS5fufJX0MIH5I=;
        b=DrxK4j05loCZa7bvqD0xi+LXBMwc1+D2WLhX1D4Bjh2uQhIOGe9aSqsxysLiIEy5+C
         qCIo4JDv4NFN0Im9Z1A0tlMyf/ntkBw2U39hEIsXQ0Km77iHvkMeq0pngPrA+AYy9ItR
         H5nw+olifqQBmPgxP0rp+QFY2M8ALiBoVNTN+b1mVgt51tzAW5wNyJGLcdXNK/TpRuh9
         qHNJIA9eEKsDoGoegMA9SHn+H+H/9vDyhzYbrtDApfAIRiA0MHMHE7+b37Bscr3Sm/M5
         zhMz8B8inV4SewA91RGZZgkhgW8tOud4I8utR+YmemLGzTxlV6WMNp0oYsKhijqGv+v8
         4QcA==
X-Forwarded-Encrypted: i=1; AJvYcCVWSwWN6TqKBKAOa7MHK/HsfsvNqM59vYOs2eJatmBrqjIA5Jc9j1Zvt9xmSLOftSzTZIWog3pxxZg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/UJH3grGhwL7QUprXbZbTTVLpXTtFJxXJ5tjNRccto36nt6ZQ
	idjFYkywYhUf/DLJICYsffsAIVV/1Yl5Z0/m99pWRyNvjh2JgbhBMW6khnkpX4cpEJ2hZ718y8E
	qvX++V6ZxVOHryAHK5428x2rHdvyL5aaC7V01qcHbhd/U9ukBmGIlCKJY+k8gbw4Hf26n
X-Gm-Gg: ASbGncu+aZVNma5y9fhQ7M7tNHiEdoyRkEC7kzW/2oyvxFForBICSO0PawZFUTMuRzD
	hhd3+n0tkvuy//kecWimCOh/PkxiLEXuqxqGgy+RTdLNwAbJyA5vJqYLFfICN/IetoZ2TSWvdqL
	ClZDv5vao5+H+zR5a1i10fzXNLUeYXWToVlh4wc8UMIvXNTNyD62GMDMjNWDjUUYwJ0MEUR9eox
	/97oZeQwqwQu0kMxArbS8LNd9/sbmJNpmZEctDi/ToBqeeUESU5Uiz5Q8jaNojrlmjKD8gkfcH/
	eT116IpHUebpy+WRQH24vxMxbkmtXjeMtLSj3F/UaBtZ4160mQJlY+zzXVcvIfRM2r+PqStgBf2
	SnmQ63s7ZFo6rIYt4cBgvIaw5qmOYh541As4wtIFQQvqspg==
X-Received: by 2002:a17:902:da89:b0:295:5945:2920 with SMTP id d9443c01a7336-29559452ee2mr129451745ad.34.1762225697075;
        Mon, 03 Nov 2025 19:08:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHHApLBf34Rsq9YgCVoLCQNNS4Uf5GmQUiEe6iL/8vGo6I+Pp9mPduYICD6kaKgk8EqGlCt0A==
X-Received: by 2002:a17:902:da89:b0:295:5945:2920 with SMTP id d9443c01a7336-29559452ee2mr129451165ad.34.1762225696495;
        Mon, 03 Nov 2025 19:08:16 -0800 (PST)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29601998da3sm7357365ad.27.2025.11.03.19.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 19:08:16 -0800 (PST)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: [PATCH v3 0/5] Add PCIe support for Kaanapali
Date: Mon, 03 Nov 2025 19:08:12 -0800
Message-Id: <20251103-kaanapali-pcie-phy-v3-0-18b0f27c7e96@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABxuCWkC/x3MSwqAMAwA0auUrA1U66d4FXERNWpQamlBFPHuF
 pdvMfNA5CAcoVUPBD4lyuESTKZgXMktjDIlQ6GLKs+1wY3Ikadd0I/C6Ncb64ZspYeZjS0hhT7
 wLNc/7fr3/QDIfx7/ZAAAAA==
X-Change-ID: 20251103-kaanapali-pcie-phy-67a850bfe384
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762225695; l=1637;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=a1Tilr0P83WI7yzkN8cDPjsIRf8z31cBdrQD5U+XBoo=;
 b=0AXPVa9ISGQPMd5VsQ9UGmClrvg/EEmfE7kqap9r5buflV/VE1Ac4rLFpexktAWmp/SIzHBrr
 I8wRt1IxVMEAbDncM9icOsBalp3kdU22hmHhd6jNQ+NMMjmlCinazMV
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDAyNCBTYWx0ZWRfX6LmPBAYHBYvx
 oPZnufw8R3Crruzzs+oxxfM4d5BZrQt2khyrZ/TWTWm9Jr8pwOycmODfxlFr8KO3Kepe5mT+CAn
 cDX9aXNF0imlo7ztYeXqupGzToD1ZKEHItDQsYChUBoF3jc8p+/8+c7ICaUrIUA5xwsbvhct0sM
 F8o+tV2pWXuK3/mahnR63wjBes1kICvQRygZiz+jA8q4MY+QQ79eGD+PJ9PdHZw5lnb7IzwqLQD
 4IkjjsllvOVu+FZciJnhTTFARYleCVGydZMVV+rDyDkaaXVmhPuEQCcIrkmJHsbrrDchfQJ7Lb5
 D3xEFyBtjqeS+yt7htAIm5MBJj4a0RACh3K1IXBzcd2wG+M5gJkTc5enqg8GY3aH8YjszBeIQsC
 uqcQ5I2pWOXuPBzJLWi20liPUIF+UQ==
X-Proofpoint-ORIG-GUID: ns6QXjOgAOI7WUI-T6RzXlVtFyI1h0m9
X-Authority-Analysis: v=2.4 cv=CbsFJbrl c=1 sm=1 tr=0 ts=69096e21 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=gau1cqUgYdTfV32JTLsA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: ns6QXjOgAOI7WUI-T6RzXlVtFyI1h0m9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040024
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_190818_654791_D090A883 
X-CRM114-Status: GOOD (  10.77  )
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

Describe PCIe PHY. Also add required system resources like
regulators, clocks, interrupts and registers configuration for PCIe.

Changes in v3:
- Rebase on 20251017045919.34599-2-krzysztof.kozlowski@linaro.org
- Add reviewed-by tag
- Remove [PATCH v2 1/6] since it was applied
- Link to v2: https://lore.kernel.org/all/20251015-kaanapali-pcie-upstream-v2-0-84fa7ea638a1@oss.qualcomm.com/

Changes in v2:
- Rewrite commit msg for PATCH[3/6]
- Keep keep pcs-pcie reigster definitions sorted.
- Add Reviewed-by tag.
- Keep qmp_pcie_of_match_table sorted.
- Link to v1: https://lore.kernel.org/all/20250924-knp-pcie-v1-0-5fb59e398b83@oss.qualcomm.com/

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
Qiang Yu (5):
      dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add Kaanapali compatible
      phy: qcom-qmp: qserdes-txrx: Add complete QMP PCIe PHY v8 register offsets
      phy: qcom-qmp: pcs-pcie: Add v8 register offsets
      phy: qcom-qmp: qserdes-com: Add some more v8 register offsets
      phy: qcom: qmp-pcie: add QMP PCIe PHY tables for Kaanapali

 .../bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml   |   3 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 194 +++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v8.h    |  34 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-com-v8.h |  11 ++
 .../qualcomm/phy-qcom-qmp-qserdes-txrx-pcie-v8.h   |  71 ++++++++
 5 files changed, 313 insertions(+)
---
base-commit: 0688945f3e5f85f64c7fc9157223f92e0fc5cfad
change-id: 20251103-kaanapali-pcie-phy-67a850bfe384

Best regards,
-- 
Qiang Yu <qiang.yu@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
