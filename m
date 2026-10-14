Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17911CC6B1D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 10:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q6UI7koclYegoliaRiP7vdSeur4JgiIbxvYLFLgQua8=; b=Yckcczvo+o49i4
	LGvgutoSqFRIbTkZkGzUZwyJtWyavTdRXxrPOBLrsfcITf9RcxX/VAo97KL8+/9pxFzYJ3REswRBd
	mcXlOyoWnWN6w4oQC/OiPI3e8u7eNnE+DFbHQc37xKoLqfUwfwM1vkcjUW4Vxk8CuesOYZ77EEbHb
	AGTVboNHjFSzsj6UQ7X7IE2iVmEYOvHcIW7KsqUVAmVj3Fcsb/VHZou13KPLld79aanyr1dud9DH2
	Qx3wAmE+YqY6Dk0ZDQPdV6vXcqa+uaIPoGR0HSeT/2HamZqbnQVtUpkKMnV0tcukaBHIR1oKMFi1f
	XwD1wQKDHDS/iGzztZqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvo5-0000000F9Yo-2cXR;
	Wed, 14 Oct 2026 10:01:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGvo2-0000000F9XU-3kh4
	for linux-phy@bombadil.infradead.org;
	Wed, 14 Oct 2026 10:01:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=Twe4bOGFXZPC6mmxXuMGAvq+HqmTqYhaOFzSY+3Po5w=; b=JzXfibyxPv7ummW1FbD77uyE/4
	O6SwPNgmBjazRlaAoeJ+qMM1kxVqGR0bn/46YLtWTX3HMjbn1nqybOTjCNabwbMSRsLpxZK2nxsx3
	OWzDDnwfRko+6rzSgOSKOTPXa/1VrYQ+Yl/JT7MLBYK7cQsJi5G8I0OmkN+n0CBXGK1lZsmDzXWT1
	BbqgQpjbr5Cv43//gybUb4U0lKLY+G5PAH2Se5uAWb9E3aYN2MLl9ht69kt1cvPLjt9WFdhaJXKQQ
	MXqlCyWunp4FFdIGlCizTyC3TRL8Ycx+TIXLlcynTQmmpv9VfVBoE3bx/MhPFidl6TZXfeUtmRjun
	LdjEESXw==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xGvnz-0000000Gbwv-1p7w
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 10:01:53 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69E9eBQi3696130
	for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 10:01:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Twe4bOGFXZPC6mmxXuMGAv
	q+HqmTqYhaOFzSY+3Po5w=; b=jj0WL+J9h9IoYSHnQnkOykbokYMd52crb05Wc+
	tF1JmoACcGwT7RX0stEDZ0aFJOA1sjZ3R4ZT/SLKVtBxgLgpBDtj1YI6ie6t7U0i
	lG92ep2jWKRc+wuJS8NcM0mQHbc+wPnvBgefDhlt0FWVDUVCATTL+jaFtQD/ckXC
	pr4IVnnzGk7D1WDou+u8oKDhC53ar3cMrb/sRtnp1cgj6xwNx3xQzgt3lz2Ohp98
	LcpeBXMCbHa913U4D6Zfxi36VLbO7SsZxJIh9b8UTjAVTGscN8/7MfZB6pSIjPmV
	JScgycAXIfqlz7PajkaHwAtRRPEI3cdfqsCKSlrVBrfeYEWQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ha7aeg2xm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 10:01:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-92e82060977so160062385a.1
        for <linux-phy@lists.infradead.org>; Wed, 14 Oct 2026 03:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791972107; x=1792576907; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Twe4bOGFXZPC6mmxXuMGAvq+HqmTqYhaOFzSY+3Po5w=;
        b=Gjd+IGw2adXLjiksGXU7zf20BLHszeexT2n5Qr2yKwCgOycNZCN3eJ4kNkWbmRmaLf
         s/TGLeM1reirOVgZY+CWtWrhRBR5GhF+ufMK6yOTAZNB4BLRbN5n78Jmoti1QaZvUql8
         /Dgh3omrEcjK8yKb84LH+vIWHziMGfdMbl+NiVYwRifH0Wisy/vqs3jw6eKqO6wVV9Cg
         U7IzIscPr6Im4Iiw/Z+r4ig6RZe6jNKbIRFYLpNSPIl5AiceitZmMrFyGw20uu9Xp6YP
         vNCcJ6j74202qfX6NKf08lW5ZbEZi/DfrMXCBGszBAqIZahKbbxo6GmTMqwCfo6ElMaZ
         NLqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791972107; x=1792576907;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=Twe4bOGFXZPC6mmxXuMGAvq+HqmTqYhaOFzSY+3Po5w=;
        b=U7CUieEDcD6/70V5GJi6tA/Fd/xd0OMBIuIBb8nMyFqqGPlGkWnJ0bKaa5BpoUHy1A
         dH3XlBSG6q/B9D+FMKsLXVcow6uDCa/n7bB+MtYdE/YPktm+KdMt0z4bmPYGDopT/Bx/
         YCv4HjgPcaXGUThMTyD6pUFNp2aPk/Aanl13kNbghQthTVPv9pNJ7CFJlL1iZ6oXTMve
         rnF0dlFRXdQuq+Dp/auIRwvbjopJCRx7Jxo2gS5PxrX/2XAifkQnw94PGjmLaLsV1VFc
         /IT5ne4scNmY/cLorip4nFfj8HXHYwEUdc/pwSDGxiE9l6A6gKNmJYkuZrHgqckWlytj
         PrSQ==
X-Forwarded-Encrypted: i=1; AKwUvBwVjui1208h4Le2FBEoqz1uGPmB4uqUmV+WnfvJelMy64tR5dtKzPiSAu7TLGPOCmQ0+GV6loOqgD8=@lists.infradead.org
X-Gm-Message-State: AFq9FYL5zxxYECmWVGmVu+4yqaNVhIGQNlJphwi5wb+DvF1t/Kq7Xxjf
	gz1e5wbG54W1jb7JpmaYJ4r5rNDnv5kW/tdJdb2UqBYj+pPRlod3zXKmL5wnLQ0eI6QPpPyBLY5
	DjSqfqHLs6PMiqUd3EKWV54Ib53m+cfooQ5FhEHkx7jFIUxIUPhJ4J/CloIY4CoO0DtA66Nyxri
	de
X-Gm-Gg: AYBFou1yaO21qkukjDlh7cLktYAzwuaRz9clOHr5WAC/9QRmNw18H4GWgBJ3GvJmeDR
	JW2gHSxwAPOY8pPOaBwWfgEBEKNdtuTmFqH00bVuNQIQbmUaX3OvTF6dGSsJAYmECQoU682nTTT
	y4JnAJw/SaYQpgXsYLKahSV6U+2x6xXOggNn5yZ6lX932Dp+JXaDtLzplSPRsxfg8/r0G0CDrqu
	FieXYXlDLBlWN6Qn3WNCwqbYCdyTdlictPeWokSP5Q+9OO5NgixgQTpH9FtacLnAmSEqukRTn/m
	jEcOF29S3kRPWspzkaPIk1itVSzIdEC1HXzbIzhLOlqu3I1TR/LOtPrxK6U3+AP9ncZ0jx2GNTW
	Z1Zf7IylAb97oqgTGdp9PWfUx6yrx
X-Received: by 2002:a05:620a:c86:b0:93e:c12d:4ecc with SMTP id af79cd13be357-93ec12d5528mr1550863185a.44.1791972107177;
        Wed, 14 Oct 2026 03:01:47 -0700 (PDT)
X-Received: by 2002:a05:620a:c86:b0:93e:c12d:4ecc with SMTP id af79cd13be357-93ec12d5528mr1550859185a.44.1791972106608;
        Wed, 14 Oct 2026 03:01:46 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:8916:7b9b:97a2:6c96])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48de0bc85b1sm10382169f8f.54.2026.10.14.03.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 03:01:45 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH v16 0/2] phy: qcom: add the SGMII SerDes PHY for
 firmware-managed systems
Date: Wed, 14 Oct 2026 12:01:33 +0200
Message-Id: <20261014-sa8255p-eth-phy-v16-0-6310fac52e85@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAP1Sz2oC/x2MQQqAIBAAvyJ7bkGFLPtKdFhqy72UaEQh/T3pO
 AMzBTIn4QyDKpD4kizHXsG4RsEcaN8YZakCrLbOaG0xU2/bNiKfAWN40JF23q++p46gVjHxKve
 /HKf3/QAc0WwhYgAAAA==
X-Change-ID: 20261002-sa8255p-eth-phy-6a0699f98a7a
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5541;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=dA1kJxBVNYRK3wJrOfY6LmMtHsB2vzPS5APo3K99OZ4=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqz1MBKaDX7KCIBz6idXxyLNSK20L8E4xFCar2/
 sioO86nPH2JAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCas9TAQAKCRAFnS7L/zaE
 w+gZD/47iRUku+z7ViQgcn8YCIkHtybTtMtxM2NZL7Q3qW500PETUxwLE+LPdsratZXIzj6pzQu
 o6eilyTLHoWGJ1CmNQK6g9Icvy7fwm3AOpkszxRAe2ewOwotQTB1MS4qis6vM2UvJgFq8+MC2l4
 IiwFmhtE8cwsofOCnkVASE9UmniZeDHpAF7szZTHU1mPP7fB5gWwsLHxDC8MeeQYRmGC/xrpZqC
 V0TuX0LvevaKizxtMMqf8X6+y+1CX02mut8KNugsKrN+ymVfcainIa34NouIWGkZOJ4JRmr0oAg
 SgZzIWROt0hYxvgL8kKqaOnqVTbPfN4Myi2985pNEqWkoIW02lpJy2PX4n0wVjY9GksGn2X8W7x
 Hd/NiHSNBNRZRyv1daBaI2mnhRicZuMYXxhTcGpibemTEgGf6rqY2Q0QeNFFYpdqC6coTabdTAE
 8Vk/8xNRtDq3mvoCdEei99PNl4BOlnxuJXVqYx9xvdVzqy5+dxIPJLI7jCZoUOwuV7Y4xozMsng
 2eQ+adQ+dPspjVJfZqX50U1hDrXKigJLtNbh0fs/bKjfRgEJKu0bOIX8xgLt398Ad4OfyiHqCDM
 gNDHS6asc2Mqxh8R1RZoxktoAoWnpilPFTuIksyXe5U49Vlf5i7e/xzvk7ZZ4iEvgjl9nrad442
 TScsKKsA1MxF+dQ==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-ORIG-GUID: j56lb_y4MYbLPPlVz4cNSBQss8LgmY2o
X-Proofpoint-GUID: j56lb_y4MYbLPPlVz4cNSBQss8LgmY2o
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE0MDAzOSBTYWx0ZWRfXzTQnbxM9R3Qn
 GNrNUpva2QEthXt+3oYLhwoFWhcl/XuJfeAVfmiU1ysTGK+Fgm+qx/vua4KsOnMdKAKj89uCL4l
 NHLlF14947R4ZI4rIMEiUXPkz8urVk8=
X-Authority-Analysis: v=2.4 cv=NctzRGD4 c=1 sm=1 tr=0 ts=6acf530c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=PHq6YzTAAAAA:8
 a=h8s98YD0dNPsP74th3cA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22 a=ZKzU8r6zoKMcqsNulkmm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE0MDAzOSBTYWx0ZWRfXzXaVPJ+GyOJw
 aPigMHFinbPdbk7dT7FSnJAtbOUNLQM8W4eXwHrg8okxqtdfLtH+MgYjqvxlIZ/Mg6s2hgmVTyK
 ZvWxk1A8kKBlM/8txaru3c/LDYK0BfJ1J9PhibVvxT63WaNZ6eW7X4WUV16E5txpmxANfBjWZ5E
 kMzFD8t/gNpnrjZEZwOG+gn9hbWHOCy10dtLDke2aW1pRDWjozENoMY83CHwcJuAm7+msbt+dHw
 Ag+iorkWdv57DZgUuNDKTMFEM/S7HMG32evmAeMri7ZVzBwJMZsnAULWaOWCabCM0UCkObQmQC+
 tKZCEj/GPqfNkW1fO6UR7q6mtmVmw/+ixC/RdkuQuKDy5+JTHO2kvTZvXW1XBDKbQJyMfZyBbK4
 POkiSuc99t+g7Klyj7wRICI0mtDnRGWb15nzr6E9EI0IIHwBAH15fAKP7wpeC9NYEwduLGqt+nZ
 2HjnWcLev1n3qyiYryA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-13_01,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 suspectscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610140039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_110151_923983_6ADFFA2F 
X-CRM114-Status: GOOD (  20.98  )
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

As Jakub suggested: I'm sending this separately targetting the PHY tree
as there are no build-time dependencies on the rest of the series.

Add support for the firmware-managed variant of the Serdes PHY present
on the Qualcomm sa8255p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
Changes in v16:
- Split out the PHY patches into a separate series
- Set the SerDes line rate through the OPP API
- Link to v15: https://patch.msgid.link/20260923-qcom-sa8255p-emac-v15-0-e82f33720737@oss.qualcomm.com

Changes in v15:
- Squash patches 6 and 7 to avoid a potential hang-on-resume regression
  (Sashiko)
- Fix the AUTONEG_DISABLE early return path in forced mode (Sashiko)
- Fix Kconfig dependencies on generic power domains (Sashiko)
- Set the performance level back to 0 on unbind in the PHY driver
  (Sashiko)
- Use devm_pm_runtime_enable() where applicable
- Link to v14: https://patch.msgid.link/20260908-qcom-sa8255p-emac-v14-0-ec212b747a7d@oss.qualcomm.com

Changes in v14:
- let genpd's own runtime suspend/resume callbacks own the perf state entirely
  by calling dev_pm_genpd_set_performance_state() in set_mode()
  unconditionally in the sgmii PHY driver
- drop usleep_range() from the PHY driver when setting the state as the level
  setting is already synchronous
- add missing power-domains limits for ma35d1/k3-dwmac
- fix ordering of clearing the sgmii loopback
- configure the wrapper clocks synchronously in scmi setup
- Link to v13: https://patch.msgid.link/20260713-qcom-sa8255p-emac-v13-0-119f8699ef8e@oss.qualcomm.com

Changes in v13:
- Reapply OPP on speed change in the PHY driver
- Use linux/device-id/of.h instead of mod_devicetable.h
- Fix the "invalid PTP clock rate" warning on sa8255p
- Add commits necessary to allow correct link speed change with SCMI
- Link to v12: https://patch.msgid.link/20260706-qcom-sa8255p-emac-v12-0-e3ab1ecf2901@oss.qualcomm.com

Changes in v12:
- Drop the power-domain-names from the SGMII PHY DT bindings
- Add missing Kconfig dependency on PM for the new SGMII PHY driver
- Link to v11: https://patch.msgid.link/20260629-qcom-sa8255p-emac-v11-0-1b7fb95b51f9@oss.qualcomm.com

Changes in v11:
- Take a new approach: add a dedicated driver for the firmware-managed
  SGMII PHY and simplify changes made to the MAC driver
- Link to v10: https://patch.msgid.link/20260323-qcom-sa8255p-emac-v10-0-79302b238a16@oss.qualcomm.com

Changes in v10:
- Fix unit address in DT example
- Link to v9: https://patch.msgid.link/20260316-qcom-sa8255p-emac-v9-0-c58934e76ff2@oss.qualcomm.com

Changes in v9:
- Rebase on top of current linux-next again
- Link to v8: https://patch.msgid.link/20260311-qcom-sa8255p-emac-v8-0-58227bcf1018@oss.qualcomm.com

Changes in v8:
- Rebase on top of recent changes in linux-next which required an
  extensive rework
- Drop partial R-b tags
- Link to v7: https://patch.msgid.link/20260306-qcom-sa8255p-emac-v7-0-d6a3013094b7@oss.qualcomm.com

Changes in v7:
- Restored the correct authorship after learning git uses .mailmap for
  the --author switch
- Rebased on top of changes from Russell
- Fixed resource management issues in error paths
- Link to v6: https://lore.kernel.org/r/20260112-qcom-sa8255p-emac-v6-0-86a3d4b2ad83@oss.qualcomm.com

Changes in v6:
- Fix $id value in the bindings
- Drop patch 3/8 from the series
- Update init/exit callback signatures
- Link to v5: https://lore.kernel.org/r/20251107-qcom-sa8255p-emac-v5-0-01d3e3aaf388@linaro.org
- Link to v6: https://lore.kernel.org/r/20251219-qcom-sa8255p-emac-v6-0-487f1082461e@oss.qualcomm.com

Changes in v5:
- Name the DT binding document after the new compatbile
- Add missing space
- Make the power-domains limits stricter
- Link to v4: https://lore.kernel.org/r/20251104-qcom-sa8255p-emac-v4-0-f76660087cea@linaro.org

Changes in v4:
- Remove the phys property from the SCMI bindings
- Mark the power-domain-names property as required
- Set maxItems for power-domains to 1 for all existing bindings to
  maintain the current requirements after modifying the value in the
  top-level document
- Link to v3: https://lore.kernel.org/r/20251027-qcom-sa8255p-emac-v3-0-75767b9230ab@linaro.org

Changes in v3:
- Drop 'power' and 'perf' prefixes from power domain names
- Rebase on top of Russell's changes to dwmac
- Rebase on top of even more changes from Russell that are not yet
  in next (E1vB6ld-0000000BIPy-2Qi4@rmk-PC.armlinux.org.uk)
- Link to v2: https://lore.kernel.org/all/20251008-qcom-sa8255p-emac-v2-0-92bc29309fce@linaro.org/

Changes in v2:
- Fix the power-domains property in DT bindings
- Rework the DT bindings example
- Drop the DTS patch, it will go upstream separately
- Link to v1: https://lore.kernel.org/r/20250910-qcom-sa8255p-emac-v1-0-32a79cf1e668@linaro.org

---
Bartosz Golaszewski (2):
      dt-bindings: phy: document the serdes PHY on sa8255p
      phy: qcom: add the SGMII SerDes PHY driver for SCMI systems

 .../bindings/phy/qcom,sa8255p-dwmac-sgmii-phy.yaml |  50 +++++++++
 drivers/phy/qualcomm/Kconfig                       |  11 ++
 drivers/phy/qualcomm/Makefile                      |   1 +
 drivers/phy/qualcomm/phy-qcom-sgmii-eth-scmi.c     | 113 +++++++++++++++++++++
 4 files changed, 175 insertions(+)
---
base-commit: 1fffefb00cc0b0da1f2ae24e3d33364530ea6515
change-id: 20261002-sa8255p-eth-phy-6a0699f98a7a

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
