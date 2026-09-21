Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3684DC982EE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 11:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=j6kpTGXHTKylBQPo9LRKF66d2OS6bOgs26UeK1v3Kfc=; b=eNF9N9B+lQ122w
	Li+1ksxeHPfJhmATGtXIB9gZgBC0Mh6t5ygL8EgwzZLT1bz1YwTz8rs3/1UUXt/eJMOl1KT0pHgI/
	Dmy6FUgvF/wyYnuKPZulOK5YBOm9LtWmxZ0wMxKwS0YmtibBHUSNRvwlQDCsbMSrx9dAqGzkQLi83
	CXktzBGVzWC92/c7jZhit5/KZJ2GjqlVJXl3wpo9MPOuAwq+kbt9hUTriB1zreKeaP98hgsRtprD1
	twIuU6PGk9bfXTScOX3NKX+qJdsD35+kpuHOSoG3g4atH5dN3wk+DSJ2aMbSf6dzdmK6OSFig13TV
	818OGTsjm/hjQ/UU45Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cUt-00000001xpc-3u4G;
	Mon, 21 Sep 2026 11:47:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cUq-00000001xnQ-01Vh
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Sep 2026 11:47:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=9G/xNH0WBdHhRjQpYd5zg0umwgL5UcUr18cx40REZ6M=; b=VBf97eCvCoh0VJrkmHDx0a4J5y
	DXd3TEs6wvvtQzYc7se5Bl4MOCiAsqVjJY3WsVkNu3KlrRnSMRi9EDvMxJwqSbJ+3RpncWxwVloXn
	yKUysNaSQfwkJPE7Xy6mi+RV6duRXbHzfg+8ETUIwKMLieD0wcebnSrAGPHB9yQYcWTrzsJjieGmV
	eMzH5SJzhggW38XFVI6/S/4a9uD4iO8uDxhRzSlKMc/smvqQ4l5QvdQnTgfabGTcB3dT2wzQWjONr
	hWrgWptAQ1gKv4ntdkwRA6mZSekJWOm4HkYfP+A/U4BQqnrzY606C6nt1ivXaIkSZimdLklh8wwKH
	+6laByXg==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8cUk-0000000CETm-2amV
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 11:47:42 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LAduWL1926510
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 11:47:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=9G/xNH0WBdHhRjQpYd5zg0
	umwgL5UcUr18cx40REZ6M=; b=FZDYvNnu5Web1Cktr1mbFo+Y5Nbfoe+dqX3+Br
	IqsoTWH8x66fJYJZwK64piFCDxox8Orve9t7Qh/LKf0HbA5X26Nj81NTri96C/hQ
	yGqg9JziS2z5LHJLZaS1XGWAPJjGPdS7QAOoXKRVhG96LoYfx9baiTKDJtHArcBE
	a9NO2T2sQ6cMOOoXtmqGW0WsgKoVqdesLc2qv7y5AdFVCNXaprBp67tXA+UYh8y4
	IlOGwjjfx6zi5C33yVMUWygPSlsIDhP2WG58ZPi8Euw716QYKWUKuWGBMN8SMrlj
	1kAvcCs+cdGrCYBp0zxipWaHX76DRhJ1/mR6hDZjDNQH3K7Q==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtt3va71t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 11:47:32 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-7a5ed2517b7so716565137.2
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 04:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789991248; x=1790596048; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=9G/xNH0WBdHhRjQpYd5zg0umwgL5UcUr18cx40REZ6M=;
        b=jr5pZlSltNdwlV9h9BbXl/Y9yFu71JpEj6A+uruuP0UnnEBKlh07WfGTAkk5EFDO+t
         PhlqKmxNrnmmcniPkp3BRLhoz4irEq3refy/hVPUevFwpmB/7ctbJsdNuJ0AnarHBFaa
         DgqLnH20GhZ81/+mc8YhQ2vDEteKCU3B4Tx5Nelh15zI+iCSaRkJHUtICklp25pU2RrV
         69CGMtZze7nbNtC+6e8HwHFg+FgE+JtZCaVvaBAl/n6M9IAeLwj8ZIbP+UZsWu7J59Kt
         0QxizYi9ELt4gFfOMRAjaqsdDWRWitQ8x8DbZrGal9qsyUMagDSUhVcTkk9qeGaZf8E2
         ePuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789991248; x=1790596048;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=9G/xNH0WBdHhRjQpYd5zg0umwgL5UcUr18cx40REZ6M=;
        b=gfPsGq90ZoOzFamqI6X2ELQfsaDm8DPTiXeLkzoSh3rmiwelBRYo3ZObkNtM+chUqK
         lKfjAI4wr9vEuELnaNdd/UpbtQd6RPdZNFymAdMlf+qDrE51FMhGvv4Dp+xzXwBTgEFl
         25tIzChDKlPKkpjHvqYfMCLkf4UhnYnZ8xJSDNsaX0w3oq8L+eM6uqpH7RnclsF/D3Pr
         fsyCGoP9b1dzs2Sxgszv1ss3mN9Ec0dzM7NhLzuuU82180olmNK7CdF+7CdSMNxIKU2a
         YyoloobffVEm19refRdtWL3ifJjYzD6i8EnYr/8pxhuiQh1VqjRdNTTpFmOjGBJpq7eB
         LNpA==
X-Forwarded-Encrypted: i=1; AKwUvByiDqSrori0Id1HNumnlBQfJBQooAH1NEPp9MY/0WuHAwDQ/60xwZSq7q4OMZI5TFILpcbiTfN8GNw=@lists.infradead.org
X-Gm-Message-State: AFuF++l3pGkDm+fggZeNpC3ynJPt7t8ow4QF1O0iRM1Pytt6sDjjfmWr
	C7yyvwyBfdKStnQCWQZlqtEkx/8S9CnFRL5JHrxnmLP0D/WqHxbnxw5N1Th+kucXPMfdYhu4Vu6
	J1RCFHFXQHAM4Ij7PJJgngZMHcL9TVTbQAF1L2FRvLYB34EA57S85qVWd3MFaQz8DvvxZ
X-Gm-Gg: AYBFou1J9WqooGDPF/9SI1aI4lZnACS6ID3Kk/AlVCGdLYZxY/rmjrvwfyDFgwIZfak
	xPIVqEJB9h9Ctf4KEfprV/T92RIsD2IdS7dBjm4zejTldg7kUIaYl6T5h/Eo3axR/W0Fi8oYvu4
	FFTmu7j6pJkK1Bo424jowKJ/YkVZa5+e+T0QjealPTYpTi29qH/8T3iwgmBqjc/7i/jF2r5sybz
	6t7NseLNE5q9mRyCVL4R7oZYvqmjKhB58OgV0sfjWjAljmBmwh/FTWVrmoW6FV2u1/wHTW2/fCj
	UochI4GrPavz0xlySTr5EnPremvj/4JO8gPi5DjZsk7RdIr20h0qTXUTljWSRHb91kOuS9txOnF
	Z9sKtayrPBtxwJjktMUKWL0FkB38=
X-Received: by 2002:a05:6102:c94:b0:7a8:1817:278e with SMTP id ada2fe7eead31-7a818172947mr1089139137.20.1789991248463;
        Mon, 21 Sep 2026 04:47:28 -0700 (PDT)
X-Received: by 2002:a05:6102:c94:b0:7a8:1817:278e with SMTP id ada2fe7eead31-7a818172947mr1089124137.20.1789991248054;
        Mon, 21 Sep 2026 04:47:28 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:d04:d483:faad:1e4e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fcd10273fsm227980625e9.7.2026.09.21.04.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 04:47:27 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: [PATCH v3 0/3] phy: qcom: Add USB PHY support for Nord SoC
Date: Mon, 21 Sep 2026 13:47:04 +0200
Message-Id: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADgZsWoC/1XMTQ6CMBCG4auQWTuktDj+rLyHYUFptU2EYkcaC
 eHuVhIXbiZ5J/meBdhGbxnOxQLRJs8+DDnUroDOtcPdoje5QQpJ4lTVOIRocGKNo5vRkDHqQJr
 0XkGejNHe/Hvjrk1u5/kV4rzpSX6/P4j+oSRRoOyONVVaK2HpEpjL59Q+utD3ZT7QrOv6AY9kl
 hWvAAAA
X-Change-ID: 20260914-nord-usb-phy-d6dd376b6b53
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, brgl@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1575;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=FKZnkT/6LB2Th70+qjrZbrmVKT9dWj/baCWJe9p7wEA=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqsRlDWhUGHRAqhG1meqNqd9RQPuJsD6U8l5ILD
 ZJV8krCG/2JAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCarEZQwAKCRAFnS7L/zaE
 wyTQD/9wCbP5gEXybQD4QS4sHv0hhg5JzwkGAHogkWQViDex5NL1iYkLqsaVopozz4xi6vxzBW9
 D6GY+CnlLtoEhc6hnDqUnDLoshzJxJEAmNFSwJ22IsH7SdWyc3AAJarVQetRZhe8YoZa7IDHKMQ
 /x75q00E1Nhsmjz6yhpmSXgkT2FNncuuCDZ5f7ChflnlEBllHB/OYEQ21okAdUG5RrCjcANYf5k
 TIxRzZo0y6QhGtzX6iAycYDFSL/UtEoa96ZKsA7PAR2IuhUDwBzoqDshoFYezKz5XYnnUUD6u2+
 pINLFK7khleAxYGt4O+MBRKpRGZEVRqDZwd4qYvA3bENfg/0lNDUnGbgXHnkH3YsnYGR1m2ReX4
 07sgYMecvBYhbdh429AGVm4sLLX0O8D043Clr67ZzvWgArZ+Camd5gJgRJWXoTro3c0kne5atRK
 zlRChHV2yZ2WTMXNyEQJAbnU9OFpirvq3sqJ7gY18uERlJT2EbLv16PzjbgsaP856tEEVAnMd9w
 PA6HiVgeEnQ+OKkxrxHxZcpJZM5qvqBlJdSxFPBX+yF7lE8RWhcZl6pXqjuHRdL0q32xDVX67bs
 tIoD1EdnjowLk9AJJSqbKPRJTxmLee0uFP1dmhWIVsU/d/4nvu5s0nLHWLiXTkGiApK86jLncad
 MutyxCn3CPjanVA==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Authority-Analysis: v=2.4 cv=Ytia1IYX c=1 sm=1 tr=0 ts=6ab11954 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=bC-a23v3AAAA:8
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=fYuUhxZzbo174WpB_3cA:9 a=QEXdDO2ut3YA:10
 a=-aSRE8QhW-JAV6biHavz:22 a=FO4_E8m0qiDe52t0p3_H:22
X-Proofpoint-ORIG-GUID: DFp4yKRWfL1jxdTH7hXkvs6jsJhUZ561
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE3MCBTYWx0ZWRfXwEf+LFZJ8U6h
 we7gf7QL5T9OcWRDjJvdokgzqrU1fUe+wdnh2RuxloJFTY9o+gmeAFpQY+qh8JkJsup/rRVsW/+
 suvc1pPsmu03VxxNAe2ihUDzeRWzPiM=
X-Proofpoint-GUID: DFp4yKRWfL1jxdTH7hXkvs6jsJhUZ561
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE3MCBTYWx0ZWRfX3sFhGW1IzN54
 M+4Xn5qe+UQEWywjrbAPipczAmB7l15/iwe9Lw9jIKjsWXbiMOmlqqZo2RP4FiWN/dUQgQZr71E
 tfSJfsXYu1N8TGHlLW1YClLjuL+FAWEoshrXnP1PveAIWs4m2CbjoFEgvzuSKTCE4U7xuHDTR9O
 RJpxS/mKu+cQTb7c82X07Fv68DUKO1VV2jv/vG+XiHWIvjXl2Ii6PaDI1DnMecF7+Zg9Q2s9QVp
 lnHtuMV1jX1L3D2d+WraTD85/2v49/B3l4z/oQlyGgbI7khbyfnDAfTQUcf5/zXpoLM9SiqbHqh
 o6HbCWolYlD755chE0bEtReAwQcERyoqS7IvjPPACktJvXTLNbwhABRnLzAaefJIu9Bhzwt4WKv
 ez2DUn2rpvbTVZUmA0a6zdEGf5GyHKYa510D9tmcK/ufHmCQchU9qqe7OjhgUm0LvhDKLYZd5eS
 EkrBxmpH3unzA6a0frA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_124740_936832_26EC1A29 
X-CRM114-Status: GOOD (  13.52  )
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

The series documents Nord in qcom,snps-eusb2-phy and
qcom,sc8280xp-qmp-usb43dp-phy bindings, updates qmp-combo PHY driver for
Nord SoC support.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
---
Changes in v3:
- Limit the optionality of the resets property to nord alone
- Link to v2: https://patch.msgid.link/20260916-nord-usb-phy-v2-0-2c8461bb30e6@oss.qualcomm.com

Changes in v2:
- Rephrase the commit message in patch 1/4: drop any mentions of the
  driver implementation as it has no impact on the bindings. Clarify
  that usb20 PHY really does not have an external reset.
- Squash patches 1 and 2 for the optional reset change to make sense in
  the context of adding the nord compatible.
- Fix tx_tbl register values for Nord.
- Link to v1: https://lore.kernel.org/all/20260901095055.42229-1-shengchao.guo@oss.qualcomm.com/

---
Bartosz Golaszewski (3):
      dt-bindings: phy: qcom,snps-eusb2-phy: Document the Nord eUSB2 PHY
      dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Document the Nord QMP PHY
      phy: qcom: qmp-combo: Add USB3+DP PHY support for Nord

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |  2 +
 .../bindings/phy/qcom,snps-eusb2-phy.yaml          | 13 +++-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 80 ++++++++++++++++++++++
 3 files changed, 94 insertions(+), 1 deletion(-)
---
base-commit: 3f2425f5b5bbbdd991ca9cdfd5502e68d8895998
change-id: 20260914-nord-usb-phy-d6dd376b6b53

Best regards,
--  
Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
