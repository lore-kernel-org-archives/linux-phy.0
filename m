Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 126F5CAC5B0
	for <linux-phy@archiver.kernel.org>; Wed, 24 Sep 2025 23:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C0nm+bjz6s03iNOMAbycD+MgEItkr3ta9wXnE+anCv0=; b=Yma0BqaiNYsn7B
	7OsWZ8noXLZ1A7Rtv30meJ6XbdPndFLx7sTgRyAvFWv2gQXFyUDpFHUNr9vv1xADAq/F+7L5gidig
	1B3m9lmyy3jugDS87g09GB+49A14QXuJ6Lq4Ji/DnTmWw/fdZSCfZUEk/2ZVXzkboPJEnft8J28V1
	ZzTn76RUtEY8aqW0fsh/X+k2WXD8x2cz/HPcb4QYssDgwAcfMnAwlH8LY5C2+Ci4D7a1oMvRDlpgs
	MgY7GqOjfUu+ejkJBYF750/QSAy/6pXmTBMGJ9JioSW3fnvC8luN7cRFvjLylmxUdKzikCbgwpE0J
	i40llS1O2X4rlzPJbdlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Z18-00000004juC-3Utj;
	Wed, 24 Sep 2025 23:35:22 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Z15-00000004jqH-3vbm
	for linux-phy@lists.infradead.org;
	Wed, 24 Sep 2025 23:35:21 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONH7ia025243
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:35:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=N1NPRqXSWps5+W1iMU6uaU
	9WzkrfYOwTW1b50gNguWo=; b=f7mGMPGI8o7JG+1U9WjHfi+SVLO2QmqTtNWPjg
	ocknAV12ykmsvYsFBjl7Os8bVaGYGYL4FqVEXdE2Skkvo9p/wbm+C4v7EBcNuqxK
	ERicRIkcJCkUrn1ICDwUSMz8EpFudDjvV9D6Z+mmKYhPbpSpDu1qQj+VsXfV12cy
	PJfynzjYDTsFWxofhiPSaodMbuQBquH80+d6XHu7oojnKbmyCo8v64a2SoKnCcfr
	2oqzJLtn9/RtTWamjuGPkSzh5RfEB6RJQJR2zqqFdc13djLPe+nuf2Y/lzYOLh65
	ZRpo0Tly1UoBqSyevAnArmpBeGiTdH4Rq5qcyeijyF6rb5qw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv162qn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 23:35:18 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77df7f0d7a3so322466b3a.2
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 16:35:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756907; x=1759361707;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N1NPRqXSWps5+W1iMU6uaU9WzkrfYOwTW1b50gNguWo=;
        b=NMJ0HgI1zoDfWueYH2uveQvnHFAGS92JB7FPfIB7cRN5e9UoaUAihyAqvo4uwVAZmE
         wMqdvGXncf3I6bJS4h8p0aY7S0DXXq5j3xbGM2aCNxtznBoeKnaw6HHzy5OVJmAn+bst
         tqMPrVRSx3QOBx5uIJaO1jgQ6oRxv2W6eLXeyqZnu5ExL/EYequKDOuxm05GJ0ZWxZw0
         YbRx2ya7LMm/mJQaUpOC1G7fMdZqnIuGgJAyauCuTNDoEvLesd37Ce0kDVyhRu5ezqkA
         HDSrSTRN+yYyGzKYNIa6Yj3O0X97pXYq5Cni5XGSR78Md3kvaNCuEfRXdhXnL2WXm8QR
         hSCg==
X-Forwarded-Encrypted: i=1; AJvYcCVwDh6xvKKb/m8libUvRNPMe0vEeeTU197e/CduiF2t8ArRSH/+JV6s8I3mLrcG+6Xe0xg3yE8BTWo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxQ8EnE8nCgqxVnYtcWRUTR4390ePVwICGug+v4PEAVsvjSuzc1
	X2j2DN+p4wyjCXLZTa0L3V1b4rfYscf33KM5B5XVgxwPLEKgY1nA/ZxtNrMCRvDuKm99qUCiQey
	nmtHHGG30cFNPi6Wzm8SXSeNCl0J2Wlpe7F+H5s6YHloQgV/51qV6aBCd+P1+ubtfn8pi
X-Gm-Gg: ASbGncurHpGCnP+T58j8T4POFPPNcZpjJfeXBpAv6bUb0IUyf+ISuETPaq0OyLdPuOM
	PCDEdtAX9R2mlT/cPIlgmf/dFAVANuD0QkOkyN4635gy/B8hBY4JFVn93qQRPqdTrxsc3pXSlBo
	f82MuID2RmKq6bZ3ApP20vsYOscQUD8a5pIXoDY8cP4DeW3jo1W1fJn4USgRgM8ZmyZAFsyjP1I
	kRo/oU8oNNfT8k6Pgyz2IpD0He5uK7ZPVAzff02uptISjVIji0urUEMA3nKDaUVDD7OY5C/K+ys
	QbmeOi5c7+0S/0FYChvR11/BO/tDURhtmMWyLGKJ33EY9ocVG+/8OdTcKMzR0mM+2OiTHOGdVUI
	5bdcYxSPhPeJh5Yg=
X-Received: by 2002:a05:6a00:2386:b0:77f:5048:8a8c with SMTP id d2e1a72fcca58-780fcf1f200mr1705550b3a.28.1758756907096;
        Wed, 24 Sep 2025 16:35:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvPHLLLfcrAguV8dm/AHzS45EMx+5sChl6etbTWkhwR118b19qGtwnriyiyE7t/rKeIdvbWQ==
X-Received: by 2002:a05:6a00:2386:b0:77f:5048:8a8c with SMTP id d2e1a72fcca58-780fcf1f200mr1705521b3a.28.1758756906641;
        Wed, 24 Sep 2025 16:35:06 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e9a9sm212379b3a.15.2025.09.24.16.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:35:06 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/4] phy: qcom: Introduce USB support for Kaanapali
Date: Wed, 24 Sep 2025 16:34:53 -0700
Message-Id: <20250924-knp-usb-v1-0-48bf9fbcc546@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAB2A1GgC/y2NywrCQAxFf6Vk7cCkIkz9FXExj2iDONakLULpv
 5uWLg+ce+4CSsKkcG0WEJpZ+VMN8NRA7mN9kuNiDK1vL77D4F51cJMmF9CXfA7UYUEwexB68G8
 v3e7GKSq5JLHmftu/o44khyj0nexpPOx1/QNkpeMjhwAAAA==
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Ronak Vijay Raheja <ronak.raheja@oss.qualcomm.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756905; l=1256;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=Rl9KTMUdwIiYEMdOtiL5Lii1gIrVj4sbsfGYlSZOYFg=;
 b=B2o2Pfld+/1LcRIUb8MooBDPIU7mPswCsw3Py/cKadOg7yq2h5g5I/1Uux6fJQDvlvLxO1rx5
 nLk/HHSI2UaBx5sMRoIBsi2K3jiany4XakCAlndBN//foxlslCIJW55
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: WWYe_rI2FFHGqogjKDw_wHxpxyjpgTwC
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d48037 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=751tZ-0Qz6C-U5i-0qsA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX/5BHQN//p0is
 g9olCQ5ZRMEm8c5GHBwWSwroFoWmdBED0NzJ1dYiR0dF3vZF/7YFGMRCoTQ55rVEE5Yw1nX72NO
 tGU8R4ciMgeDgEJd1C6gjfDUAbbbS0gTi6xuSGQa+D8MPCzuPrFge/djd63K2FbOQu9IdFhcISK
 WZ5/A0SneNwd99Xe65JI9ZgxRmvogbYtvrPhPOjVxk6XzzQpgyuERjhTC2E7LOwIY9xrVAKxjWN
 yTHIjvkbHDgMp9DpdZHSslMLHLDQTvgUSD+5gbbabsyCxIkr/5nFR8ikT+3WUywPuWzDhv04FHW
 hQaLD1h9XnhvZm+g7APdh4IqIqajJemcvDCVX75S7VxhzQNxigGJSjJFXeZchCZDlabyjDfLcFH
 GhGQ1VQY
X-Proofpoint-ORIG-GUID: WWYe_rI2FFHGqogjKDw_wHxpxyjpgTwC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_163520_118486_31CF4A9A 
X-CRM114-Status: GOOD (  11.43  )
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

Add support for the PHYs and controllers used for USB on Kaanapali SoCs.

The usb function depends on:
https://lore.kernel.org/all/20250920032158.242725-1-wesley.cheng@oss.qualcomm.com/T/#mb2e1260cf266638a56c04bc793f5fe9ed1b3b79d
patch 4 was picked from:
https://lore.kernel.org/linux-usb/20250527-sm8750_usb_master-v6-10-d58de3b41d34@oss.qualcomm.com/

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Melody Olvera (1):
      arm64: defconfig: Add M31 eUSB2 PHY config

Ronak Raheja (1):
      dt-bindings: usb: qcom,snps-dwc3: Add Kaanapali compatible

Ronak Vijay Raheja (2):
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Kaanapali QMP PHY
      dt-bindings: phy: qcom,m31-eusb2-phy: Document M31 eUSB2 PHY for Kaanapali

 .../bindings/phy/qcom,m31-eusb2-phy.yaml           |  6 ++-
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 54 ++++++++++++----------
 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    |  3 ++
 arch/arm64/configs/defconfig                       |  1 +
 4 files changed, 39 insertions(+), 25 deletions(-)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250918-knp-usb-810dc38e91d1

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
