Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE433C43327
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jul 2026 16:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tb5pIpN4b7XdeqIjKB1w3xYlJStqvZ2KlIIyN+SYCVI=; b=y9iCe6MyQfkqOv
	EYyeb7HTQJzhFh1HTySiH689bxrCiYC+aYNHMQlci7elKWsZyZjkRP6MKPrj3UQz/tzXHdtlVJ0oo
	9azDJkv2k2ECypHCtqxL/ZIQnyegSAPK6812Ck7XZxeb4d/I7SFId0q1kdQgwM3z+caJv4vBrmqG8
	4RMQdHnrjZkVhzklaiMDyNJggFW4DGBYJvj9OB3+MjB0teEOyGJw4QIrzbuEHc8ByvNJHCBE4zs5L
	T5J+l86YUEucVlrtiAvbv2zVYMSlVjG+iOy7QeW+9sYJg5MftdOFBQvyDvv/85LTBn3VNvDUff727
	M0erdSrQfJqlcV6x3J7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey9Y-00000002ajt-2ksL;
	Wed, 01 Jul 2026 16:51:12 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wey9W-00000002ajI-0zXA
	for linux-phy@lists.infradead.org;
	Wed, 01 Jul 2026 16:51:11 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 661Gmcwh1712868
	for <linux-phy@lists.infradead.org>; Wed, 1 Jul 2026 16:51:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=pLLEkdZGg05RR/kWPl97BFuXcLJ57ADpbeM
	ohFlzEKQ=; b=OVf+vu1KMLMWhmTaAOdmdqHjOjGTw10BCZAUMjFSgDVxKU/VNpt
	rqynSylirdM/apMdUbJiIYL3SwcB0tQyw+jfr9LQjwypkxNZegxwtX59x6WSc9hT
	Nj2RIflfnXDCT8R6gkXM6L/vXjzfDlxVuKcewKMQO1LXwN28+4Ij38BPWx2s0ptr
	Zxbs1x8QSo/Eyvdx8GkC4eWQtf+WDHzROEpaKxFdAfZt6IHlyRh2sgRZD9EPT6Zn
	hEuj3ZlrVOAEPMm4ta/a2/ltI34yQ7/sLwXuIDscBBGlclmBlmFxCKanQbTtWHAV
	VQFfYZL6CkhcKkcJhSb6QEsrLjoIpVdpz3A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f50sd1put-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 16:51:06 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-37fd707bc1aso690852a91.2
        for <linux-phy@lists.infradead.org>; Wed, 01 Jul 2026 09:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1782924665; x=1783529465; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pLLEkdZGg05RR/kWPl97BFuXcLJ57ADpbeMohFlzEKQ=;
        b=Di6TWoqfMRI9x5V2fw/VinAU36zaYwNDrTgN72Mnqb+0mUlYcBcfseZjlmFa8vhMlc
         7tlpIQif3+6WcpDKh1EMNTXoQWrxLsrGsCJNTPUmNEUxjPavcAjwiY7pbNuXY4PiEzZ5
         +OfUf36dd+ULRKdUCgXbX+IVx+FgqmF+LkRZy1wRNGz/6HTLMr3P72colPPf5FX1FJae
         A08yboaYjoItT2z2DKThOh931IEIaZNQncHrvAXTgAtSN+n/UVcHt7PI0BoOp0X5bNE2
         SbHKGTRw9ZVgVQg9EWUK/qHojonOappbylPN3U2ai+4kgIbrFXMbz+ciOP5IMjGydp06
         /W6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782924665; x=1783529465;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pLLEkdZGg05RR/kWPl97BFuXcLJ57ADpbeMohFlzEKQ=;
        b=UIjbzSuayjYRCFIeLOzl5j61xxLYTOaCp4E3A0FEDY8YBtJnMgCHLxJ/9pB5C9kY2+
         XfxlcNKdSoB/ImYqvCdyxva50r1Noy541yZ55fvvQOw9B3649D4jQ+FVd7G17YbhiWgt
         Rvs+pXMQwojNLEK9FKk+775UU70dI3zqU/n3bcuKH6qx/J70eEHlH3b26E9CzUZX59yf
         edf/3bKWVxsToZSI6AWI1V62GGG2w0tPKpIdOwe/cBAgvBrrZOO1fO5yOO9q0qLn7S3T
         AZ2A+wFwtZA3hVU2jiiHdkElw3C5FDxtjIf63nfSFa9fLCcdHXtGXAn5Bj9aFK7s2ONO
         Pceg==
X-Forwarded-Encrypted: i=1; AHgh+RpyRbXI+1ZecMpJp9ROxvUe/OeYCXBjsHhbTihBm6o0W6Lkyl7RBPEH4sJJlHPAXwqjawhVA/5zvWQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyBc/X3Bp8RyGP5ui/Bt4OLjQ9G1qVI3ExPZFsnJbmiX6piNMlQ
	n2sNW8ghgZVnbuFzuu5sfaCqNW/nBV5ywb6jgCZ3dmUuMtLLPPOMjuUMf0hOe5BwmhMtsaWDpEr
	QmLr1kjK5wCfaKx8vLVfq7z7XmOcdFNJ1MeEwqa6BgKBONE7MONsCvAQVxvMKBtAi8Zdx
X-Gm-Gg: AfdE7cloDpsIakaQT8LsiHefm9NBSxv5e8RxrAvLh/2GJzgxacHfPAGq25SqDH+MySr
	WJi12OlAwI5ePZidJYR6Da0m67ZkgNjrZgnku+iP4ZILZXkvP2il0kUB/cB+chNf6Mze7QpVu9N
	Sd139CSBbWOafUmpJW+78a+FuVnx4RAdRrlg66EgrcAnyWCTy2Ls7npMUIT4SCHkRkJ9SlXO48N
	y4XLUDKWwJJlFGmOsF9PRKL5rxAsGKDOybAFuge32SeNwtlcS/ax1AQ1rPwCq+Oz1/d8nnwcWdG
	IUQ5olNGf0J5e4zkavH/PET4AZyMzDgb5OwHALbS+zaND9/j4fWQOgaTIpBrqp0I4/oYj/Vwqj1
	4bg2Wb0LYfvYQ+HqmK8vN8Gw2iyqaPsicqXglcY6ewhjUdO0573ycYybDa5cQd4hfjARMjbqhSD
	l/mmgu
X-Received: by 2002:a17:90a:d610:b0:380:534f:58c2 with SMTP id 98e67ed59e1d1-380aa21f0eemr2164257a91.30.1782924665473;
        Wed, 01 Jul 2026 09:51:05 -0700 (PDT)
X-Received: by 2002:a17:90a:d610:b0:380:534f:58c2 with SMTP id 98e67ed59e1d1-380aa21f0eemr2164211a91.30.1782924664973;
        Wed, 01 Jul 2026 09:51:04 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-30ee317095dsm33038935eec.15.2026.07.01.09.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 09:51:04 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v4 0/4] Add USB Phy driver and binding changes for Qualcomm Shikra SoC
Date: Wed,  1 Jul 2026 22:20:47 +0530
Message-Id: <20260701165051.4122259-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=Z+3c2nRA c=1 sm=1 tr=0 ts=6a45457a cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=mO9Zq68peapftSoldg4A:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: Y9absJFkfd0Y6fI_O5vDvRTe-XwOsxPv
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzAxMDE3OCBTYWx0ZWRfX4xqyooOhgORW
 DfvBG5Vj/m0VhTOuA2AUBoiLh/25opFV8mCYWMlMRXMJqrpflMczaRnr5gdFaxU8rcGkteXmtEg
 St1ow2p6Yt8xyhLPL6Mgjj8TW5FaBWA=
X-Proofpoint-GUID: Y9absJFkfd0Y6fI_O5vDvRTe-XwOsxPv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzAxMDE3OCBTYWx0ZWRfXyTAXqrdz2f0B
 uKjgtODAE4tH5SUvXYbPqVCdQleaMo06ThowjZy8e7sAFe86KaQdwssIFGyCjWW+ET6PpR+/r9P
 4cr+dmS7H7lw/YZ7xOlqJ3Cw7eINoIkRhUKiQFnVVPiFxDBH5+w0dMgerXOG5cC5shxOlJ9953n
 MG9TRZG6LyuImw0zRsq8Lf68BULrzijsNvurpGD+xAOM1+5CEklj4amm1zbZHqUJjfcPJIvmJ6N
 KSy7cOw/SfwpIZNKf0GqaOA4UbTEjM3XBd/RDyYXodrKIeNQ22ETAZF23oU60nW0Wll4WGmU/C0
 J11iiWvBiAxm/lGCrMhsWHqoh6xUysb0jWFx3XV/V/INMAkgtPfzbLHjZ6uLLE4av/raQCMPWap
 irar6l5XQ4Ow/8T8WOruOEf86mVVo1rLHwdheGTo5bLSAl9ZnOXTfNZEu6F7/7zEZmOuLD2nkdt
 CvI7Ijxp2Q1OtDStmJg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-07-01_04,2026-06-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0
 phishscore=0 impostorscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607010178
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_095110_284960_F5203B1B 
X-CRM114-Status: GOOD (  13.51  )
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

Krishna Kurapati (4):
  dt-bindings: phy: qcom,qusb2: Document QUSB2 Phy for Shikra
  dt-bindings: phy: qcs615-qmp-usb3dp: Add support for Shikra SoC
  phy: qcom-qusb2: Add support for Shikra
  phy: qcom: qmp-usbc: Add qmp configuration for Shikra

 .../phy/qcom,qcs615-qmp-usb3dp-phy.yaml       | 54 ++++++++++++++++++-
 .../bindings/phy/qcom,qusb2-phy.yaml          |  1 +
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c      | 53 ++++++++++++++++--
 drivers/phy/qualcomm/phy-qcom-qusb2.c         | 16 ++++++
 4 files changed, 120 insertions(+), 4 deletions(-)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
