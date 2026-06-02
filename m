Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 252B6C5DF71
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 09:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZMugHp9wVNnlhArBoUDWMNPEYBCdzoMoEx09IAvP0aE=; b=fyyKn+c/yICJzm
	D1hSg9VPVDNc23CnC0oYpqfBZSrmqYxrQX3u8ZQhINRFQjJCAnVz1YCA6Ioqh1awSZj19R0ErgP3D
	MQGm6KU8cnaGdrN3EUlLck5frs5yXRoul7AmPAGqKMds0qsVbHDxvoxJwsrbCKZodZM5hQbV9hBTi
	AsLMKkXycH04ho1KHJ9E1kO4cCAooQqv7Qc5kazv8Spex8zdf84YevQN4OOrXC+8aCru/Snwwsd2s
	VyBavKRkgUqL7TX45xW7hiMmv7vY4oLkavW0eil31dd+r1OPHNWHfpx3W+EQi8KerzWtCNZ7uSnzs
	EM7cN4LWXzT0V6j3Ydfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUL8l-0000000CdBD-3aF1;
	Tue, 02 Jun 2026 09:10:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUL8k-0000000CdAo-00QH
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 09:10:27 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6525iro11316757
	for <linux-phy@lists.infradead.org>; Tue, 2 Jun 2026 09:10:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FQAFb4GmUnX9anlV/m24uh
	yxYJQgrndhwAGHk534GYI=; b=lvz2MR0G1GOxoq5WxeLsyC0w4xiezwmzkfJ3io
	Su6wBc7tsdpKooHqOwoYnV18Z4ISxArPyu0BUTW3YOitDAvtUg5MYbjZjaWgJ/tf
	6/NplR5QOa0pTNgFgIk2ii+RtQrJI/YUefGTFV2RT4BIlf4Bwvad8awRMpq5UEdj
	BbGyliTKGMtNgbTckuCDjLoM7CSsxbgHYxhXaKni+4L2g1h124gUmEfUox1pmSo9
	Sui1W7eyR5VIz9kRsKdZJNjUZDVXRR42kxxJ0n9ES3dtdwloQHF9i5wV76H/Vnpk
	aqSqltrm5lj0t3JiM8iy02m2ETK567nzxmQPXT0oUMcbWFoQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ehs9vru6p-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 02 Jun 2026 09:10:24 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2bd04e4fe3dso175954785ad.3
        for <linux-phy@lists.infradead.org>; Tue, 02 Jun 2026 02:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1780391424; x=1780996224; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FQAFb4GmUnX9anlV/m24uhyxYJQgrndhwAGHk534GYI=;
        b=X/vNPbbAwwhOOvQk5GXoc6IGwVNRL8tZ3UpZTrQdWwuyIEYxvOfbRqU7z3NuafdD9v
         S+vLa95V3nN7/HkRegQJMS7BZN+6ZOAu2DoEvR+kBMZgbNgXuMDkAZfN0I6n56Hnjqv0
         ViaAJgv6/NR64dx+EFFfh7fbCYrRxZqClDhqayjHumQtJ4Qqbk8tiX4nPPlWuugOJmjv
         sRzgTRuJXlqhEjiEYerDT+g7mSeSpgwbiI82T0GisbNIOw6t8MWQPEbO6CKhvCPaSgZC
         nNh+OezdlQOUuOdu4oRK+5LNSmXpAEwYATkteqtRLPLCbf34aqTQ9uTbxpt3rR5vkXkB
         c1DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780391424; x=1780996224;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FQAFb4GmUnX9anlV/m24uhyxYJQgrndhwAGHk534GYI=;
        b=aoZCQ8Q35h1mXxRli2a8WaJ2GGQg7P9h7LwtwxePWOV4YEsao9pKXY4Iyrfol2UE6b
         Kf3Azbtd8TnXOH4cb5QqhvTc9RanCP0uuYTkuzvXSaGMGpeNZf2YN5b+riy9s/3V2Qek
         Lav91KCL0UOZeu2ogve97i+S9QJrc6JgjRtR7wHck+5geeqvlz/mziUshiY1W7SRPLEi
         SmQKXuexEGAVOCq6OM9Lyhrp6WtvKeky/HsQFQGqpWJmnd02JirLUKK1CRb48n5gNi/K
         SfLWQZ4LFZVvzwNYChG5PuXPgaeBT1OO0/pxlyn22hHH6u3rXsBsOs9Erm4lKOjv/rjG
         RK5g==
X-Forwarded-Encrypted: i=1; AFNElJ9KksEgeAxAMkYnJy0mGXLmVzFUyU61jOt/RnDX5L7ZZRCwhs18Q9FIGC7pGJINPZHTqwJT4obqLWQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYimK+78sIIjM3xE6ymZRr/Yjt7wfqJGAVyAA9Hlu1y8/g8RLf
	DeaCGtu9YzuhUhzqtRgqRkD/qcJb69ER/hvcVB4/FvBp8pmQzDIAzKvxsHxbIw0yS8QuCpjevVz
	6Ia2mFdU89rsJGnN8Kl+05vhIlX7LNeBy6pDG1UpGp/k3ZAKa9yHFNQY873wWwLDs5CKqOD9wXD
	xU
X-Gm-Gg: Acq92OHpggziVZa2NpjUAMzaRlXhWbnPuqDIrLdQYqo8aPGYR08Dxsbx/1E+yTkdOH5
	w7JG78V8BWSEb4/wbNtBzOTcDKskG7whRPNaKaE6SK/zcu/M5eE+R2UpbqQO2NUILmUNZ3/eNlH
	YHwViCS5zRVyd0GgohoT3JZy7wh57qzL1P4qHSD3cI3arBvOxkXs1klZlVO93qLjMEktnPYeOup
	rF5egPJ9dggKmSJ+OPnUyfAyKS6IyA63HutvvmZHs8wBWw7Lfz/i2gZsLhnZNSkLqFbPDNwSnen
	vUglySQ8lpqLnrVFXrxMyQ2OJ5OhIufQOOrvet8gEzqfrCUEU/wy7Kob43YNPDGaSwxP497Al0U
	GHvuRWQqswgr7cS2dq0ABeTBKue/czHn2AluRr2highXUIggAueyhKUyttuire7+tqIA2Sox5ap
	K4og9IxS36IxKMMnW691P79qvoQETyF3awYFH/tYJWZKtBD1yJujP5DMVU09u2IIM9mw0=
X-Received: by 2002:a17:903:1905:b0:2ba:924b:3948 with SMTP id d9443c01a7336-2bf367e4391mr174961075ad.15.1780391423842;
        Tue, 02 Jun 2026 02:10:23 -0700 (PDT)
X-Received: by 2002:a17:903:1905:b0:2ba:924b:3948 with SMTP id d9443c01a7336-2bf367e4391mr174960725ad.15.1780391423415;
        Tue, 02 Jun 2026 02:10:23 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf239e6ff5sm173007765ad.7.2026.06.02.02.10.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 02:10:22 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH 0/2] Add support for the QMP PCIe PHYs in Qualcomm IPQ9650
Date: Tue, 02 Jun 2026 14:40:16 +0530
Message-Id: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPidHmoC/yXMQQ6DIBBA0auYWUsCGND2KsYQC4OOC0uhNTaEu
 5e2y7f4P0PCSJjg2mSIeFCi+14h2gbsOu8LMnLVILnUXEnBKDwuWnETLKEJ65tp7nrnO6kGYaF
 mIaKn87ccp7/T67ahfX4/UMoH/Ple23QAAAA=
X-Change-ID: 20260521-ipq9650_pcie_phy-60d7df32581c
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Proofpoint-GUID: UtwPxs3AxZceZwkDmfMBnLrYwn02VePd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjAyMDA4NSBTYWx0ZWRfX2AQOjwj/UiGt
 6eQmvcE9oYSg+i+da5/K4tpJEtC2b9rIncD/+BpZfaS31g8Xc/0GDyrAfve/KNAqi28rstNK7kI
 gbN8D+KZGiIqsrYTEL/B85Gcu0Z5bGHpPFUOyHAjU708H6Is9PTUQCfvBNkkGA71tEh6tIguXU9
 /BQ07J5upaKKADJ7NvNrPjP0jAm5yku78XSTJVAvMsj5XYGW6FZ7So4ZrLXJ9nY+6qZmC2VPh5t
 AdQjVUL7No3NCmtarC+3dEQExr0YZhSiPnO2StSnH6ENHr3LDXBSN/XiaYSuJFY5pDO5nRRBIqc
 fnBySBoeKKOrSvRMnh98LGwjKmxlelki1Tt6dhC7oQLlgn/j+oQ14dQ0/LDcrvGuL4TuhUIzLx1
 UDewL/8goYhM5Zt+MLSP1041YVWcga59noQKL+0kfnJIP5xhfwwh+DWqhuDmAPr+IlAFdIwTpSj
 HCLsxb1gEr+04Hz2BjQ==
X-Authority-Analysis: v=2.4 cv=NYfWEWD4 c=1 sm=1 tr=0 ts=6a1e9e00 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22
 a=EUspDBNiAAAA:8 a=q3mB9QRo1V_sjKeEMVIA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: UtwPxs3AxZceZwkDmfMBnLrYwn02VePd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-01_07,2026-05-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1011 suspectscore=0 priorityscore=1501
 phishscore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605210000 definitions=main-2606020085
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_021026_064693_1CA52613 
X-CRM114-Status: UNSURE (   9.82  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Qualcomm's IPQ9650 SoC has 3 Gen3 dual lane and 2 Gen3 single lane
controllers with the QMP PHYs. Unlike the PHYs in the other IPQ SoC,
refgen supply is needed to bringup the PHYs. Both single and dual lane
shares the same HW init sequence. So reuse the tables.

Document the compatible along with refgen supply and add the phy driver
support for it.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Kathiravan Thirumoorthy (2):
      dt-bindings: phy: qcom,ipq8074-qmp-pcie: document IPQ9650 QMP PCIe PHYs
      phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support

 .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml    |  19 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 220 +++++++++++++++++++++
 2 files changed, 239 insertions(+)
---
base-commit: 08484c504b55a98bd100527fbe10a3caf55ff3ff
change-id: 20260521-ipq9650_pcie_phy-60d7df32581c

Best regards,
--  
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
