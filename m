Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71D3CCD4F4A
	for <linux-phy@archiver.kernel.org>; Mon, 18 May 2026 16:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hnxrzOOvu7nmTmMN8/41CmZdtIQTk3bMxV8dFz0aJR8=; b=FbJruDWmDBl6/G
	Luan14DSQaPWMcC3x/4c99rDVl18HLFqKGw6Nyurp/gw5rrnIZgIfTKzt7e0P3HMCsvYZhtzTYQ2N
	2jFfOmXJVzJVCmcJBjUmYHvGyrXGsi66XTDDgsumclbitDIWKVorlS9nUSM9+JAp6GDmJMd1qo0MG
	3NLDhJDxfz8fJyf/vl7rsCcpOL+l+tJaDDVvoaKdQvqgwQgkkewuuNZPrxjpoKhZn/MBPNBkFddvo
	dPNc7xe8CWTyXtM2z6omufWu4TQQ5UPytAxr3lGTYqQdyESA7jcNpX5yhF9fpIeB72CalqMS+dtKd
	T5oGzlIbP6gHAljmJ0DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP1E7-0000000GLhx-2kXD;
	Mon, 18 May 2026 16:53:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP1E5-0000000GLhD-3DQR
	for linux-phy@lists.infradead.org;
	Mon, 18 May 2026 16:53:58 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64ICp5TL2438091
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 16:53:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=7lxUpI5EKNmm9bW23PyCFwlpG321pegHYU1
	zPi+AZCo=; b=aW1fIayCRt93kgOeuxzaB/69wtRh4CPaEc7dJSFfZb7Gjg+OJ2e
	JkuqyPIBABL9ZmBFaHfXwqofR+NHYsCv6qRyiHMgixpt4dvlKqCuY0fmY7epAk8C
	kA9o+wcjiHzhI4Qrx8AmcwnIP2Ka3Z1MW+NwK/yxytdCvxgZpj/kkh10RZWTpYag
	JUbL5U/SfBEjKosxFci0HmouJeJkC441kIy7jp0qiL9JcoJImIb5PfnpLUVsJZG0
	13DkXt+7RK43pEe8SES2Kq2+g9rokDNPg03barZY5+pFBOZDzRd8XFp/MsU4tEbG
	XtVqDg58699KwL7t9U7qVkfkJLjsojGhgFA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e834v0y7b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 16:53:56 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2bc860066a6so19067725ad.0
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 09:53:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779123235; x=1779728035; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7lxUpI5EKNmm9bW23PyCFwlpG321pegHYU1zPi+AZCo=;
        b=dAraranGcODvFvxCy54UVKSw/kziB0JjhQw4YCklddl/MhXZV8W9CnY2+MUdvz0MgS
         /DEGItWucXhhh2Vb9NY4WCl7alAENQ4Kdgo0yR7SCLfEwiKhcJkjEBgx73PiDEyj3aFn
         qPpqVTCcvpn+F/efJt+q8dmjpGIRM/0qAyzRgZP1cKj3R7fYAmXyAz2lOXJLCC1ET0Yl
         heqAMEuQsZebm4Zn+sS0rSaU49htu3Cxwo1/8SGLOFL9ixt1NpvuKSWczIXSmppKJV+B
         kGBNfJDY/j34pUIur2oOQglsVaXrp0OTXgrksujr6N44JIomvhPLzbqsQdJjjYij8dWx
         oMgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779123235; x=1779728035;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7lxUpI5EKNmm9bW23PyCFwlpG321pegHYU1zPi+AZCo=;
        b=H+jMz0t58qMrz3hfTept1UTlQbykuV1Sa8CHSF3jdA+yV8HmBMHpkjzptuOSE7HGqV
         56gzCm7+EMTXCDb4KqWtFmbi5tK6Svp/WQpbZ+CkZ09xc7gq9KJZNqtIrFy6V/xVrSUr
         z29FEwZATqfGRQ8809KhkQNp4N+DcCp7jScQL9TSsmrz3A/0YSP4htKYTLa/dEgo0gtC
         FpQMY7pCqtIz5/ZilpnhgwMZWSbWih8M9A/2gUEXW1Inpg+O3GXPNBFEIBDE9VOwhvTP
         7aCUcI2d9Ogdg65eM99digAe4R/wXicVnUvmsd3MlaFd6trj9cH9aHK65inxHeBsQ2EB
         Vf8Q==
X-Forwarded-Encrypted: i=1; AFNElJ/gsNyrv9MaR2oAmddzPN4dyDk7Lu6kX3aFAPkoTE9Kd+5XOPrLev9Q42YPeDN7vc9igIEyIDDrCFA=@lists.infradead.org
X-Gm-Message-State: AOJu0YwEAvqg2Viltmqo1nyq+wroBRviZ6XPSOu5yKgKOcxVhBqKjaJQ
	AxzOqlFQ1Rea8QbUwXKNyfLd7TKQcyo27CJcVhJVXB7mErzbHac9micAZmrCWrQgvTqggZCl9GB
	R6/O8bpwcl+vJ9tsrVmseefMVDAvxbS+qorUEm9WirJpyfmc031uND6XLRPwceniAcbUq
X-Gm-Gg: Acq92OE6ZlbODQRvGlgbXnD/wI7nMT0QMZuhd47IcK1WLBusRhoGE6ZROFWFsmIC93j
	opzJcPsnXdGSvE35t8DHRHHvsBu7aysxfLU8j2U8c0k/0ocntY7hhAaXLqSv/F10XebFCK09lZf
	A9gfLV1er1CmU0PafoiZiA515I8yyVbuqk5GbicG4OMv7cnzJ1emNjO1K509FucldJUW6x9z0qK
	4lnGgpxEyJXsN+kaOFIu90vOtujelvFKPynHmhXhf1eY1pE2vSkYipQa3hKosTpStN3i5Wh2wjV
	w8TY7TNml22B5SWZAS1yzbSw8FY2Iw3ClySJDJLFKYOp0Un2ww5qU/e20F5yzPjG87Uy2gRmfqQ
	B5Fz8zgAVIL50RwICnzacufeTuPaJ7ROsnO8cAyaVdXdVDcHAa4ILNPils7Cu0jCu
X-Received: by 2002:a17:903:3884:b0:2bd:b585:55f5 with SMTP id d9443c01a7336-2bdb585571amr91337515ad.8.1779123235474;
        Mon, 18 May 2026 09:53:55 -0700 (PDT)
X-Received: by 2002:a17:903:3884:b0:2bd:b585:55f5 with SMTP id d9443c01a7336-2bdb585571amr91337175ad.8.1779123235007;
        Mon, 18 May 2026 09:53:55 -0700 (PDT)
Received: from hu-pkambar-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bd5bd5fc47sm149971045ad.10.2026.05.18.09.53.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 09:53:54 -0700 (PDT)
From: palash.kambar@oss.qualcomm.com
To: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, mani@kernel.org,
        alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
        andersson@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        abel.vesa@oss.qualcomm.com, luca.weiss@fairphone.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org,
        Palash Kambar <palash.kambar@oss.qualcomm.com>
Subject: [PATCH V1 0/3] Add Hawi UFS PHY and Controller support
Date: Mon, 18 May 2026 22:23:43 +0530
Message-Id: <20260518165346.1732548-1-palash.kambar@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=F9ZnsKhN c=1 sm=1 tr=0 ts=6a0b4424 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=EUspDBNiAAAA:8
 a=wRtOOnJjwWicnHpPwtUA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: dHupiKpLlNVB44v2BU3ZgNS5tcARW-GD
X-Proofpoint-GUID: dHupiKpLlNVB44v2BU3ZgNS5tcARW-GD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE4MDE2NiBTYWx0ZWRfXzg/uSfK3UraJ
 pnWCubiNnNP8Yn8YfO+bi1FUcLQRGZDTeIus3keTPVgzMoe5Sq/q7xdzN/egyFyAQ6dayWyUc3r
 0njmHRV2Nt34ZNZ9XWTuFhqLmH21dDHQIrDcIkG/wRxeUQzvBHUT1MkB5CF1W3hoNybR1NbaDRf
 XPp+npSFB9wGQUS5i3PMKBmhFQ/JDe8SlvroonYEJKPb8q/wDJHZu5p+nKTJof4WxAopF4B3iXy
 PHRQ5ZMeLbEtY9QEpdSLPVhnCcnM+Ih30BEWWbe1N7fCJc1MoxjzCPg9nhQpVFSuQ0Z3iJJUN+e
 iffBYZuBPrGpmUbBZ2G1HCr8sr0muoqujaop0itcirhx4Wr/vGBmNKa0LdhAzsE0RXi+7Q/Emia
 GC7cy3ruwRgWTB6sm7IB8llLz5o2wMJc6HJ39ECotp7+rQ2GE3PfVS52ZwBwDjREEScFmOThEre
 GJCybL6G2R4X6I5si1g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-18_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 priorityscore=1501 clxscore=1011
 suspectscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2605130000
 definitions=main-2605180166
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_095357_811668_C16E5E21 
X-CRM114-Status: GOOD (  11.51  )
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

From: Palash Kambar <palash.kambar@oss.qualcomm.com>

This series introduces devicetree binding documentation and PHY
initialization support required to enable UFS on this platform.

  1. Devicetree binding documentation for the QMP UFS PHY
     used on Qualcomm Hawi.
  2. Devicetree binding documentation for the UFS controller
     instance present on the Hawi platform.
  3. Initialization sequence tables and configuration required
     for the QMP UFS PHY on Hawi SoC.

Palash Kambar (3):
  dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add Hawi UFS PHY
    compatible
  dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document the Hawi UFS
    controller
  phy: qcom-qmp-ufs: Add UFS PHY support on Hawi

 .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   1 +
 .../bindings/ufs/qcom,sm8650-ufshc.yaml       |   2 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h    |  22 +++
 .../phy-qcom-qmp-qserdes-txrx-ufs-v8.h        |  37 +++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       | 140 ++++++++++++++++++
 5 files changed, 202 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-ufs-v7.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-ufs-v8.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
