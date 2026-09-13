Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F533C88E66
	for <linux-phy@archiver.kernel.org>; Sun, 13 Sep 2026 14:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C1DFEIMlC5KnYJAolmrJupvuvGaVag0K6KxnQa/5IoE=; b=ucNMi6c0TCiyJ9
	DAReLOscLujM3lZQ5JwRNlWqp2XovowkPbhOHwygvVJjmDbKbkVAonpO96o9BA+kj6AdZmlnZ75Me
	OM650h1uPrxyM6AMc+0QV5md3jJNUfsL0GX5J3Llvvkrm8NRk1xtWaLm1Z/rzG/X1dCLO9ope55aC
	n6Rv1rpS4JZMbF+N2H0O7clwEGng/8ctc0RfPmusYkP04qG3iT3bEFBCDK32AXiy8qbpf0B+S/2SV
	7vQZYgEosICsn9nj3varkg/WR/rgV1AmrvvyeN1ltUKq0hLAQIooS+w2Opm8SHu+U1VUy2CF+aUjg
	n0PS/kbdgTkS6N/dEmig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5lOB-00000001ieF-0osD;
	Sun, 13 Sep 2026 14:41:03 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x5lO7-00000001ido-3hKo
	for linux-phy@lists.infradead.org;
	Sun, 13 Sep 2026 14:41:01 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68DE05sH1200375
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:40:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=cc7emweiprHjSxKjbMHJ2a
	c8qRlQv/5NgZ1mLvSzUGk=; b=B/CGxtCE9C8+1EdSpRQxz8a/a4lo2ywSzRL9jy
	yA4F6RFLzg5JY/bGYTiGkIx9z3Hqc6RuV+fyDE0ObTTODRsO0ZEdha/5kD8kJGY5
	Xkfxh77fSW3zBrIAqDiORRDOAm2VNy/zys6fXFsAj9BS7NBkG60m4VedBZBKAIMg
	2EpXV8vegxUJc7bkOdF9tckPomIZWz771ekYkBBfCJdw12oty82X3bLzdihvquG8
	tli2NaX6sIIYiGnb66ox5hAtNrnOffw/0JmXHMTvFtB0DUT6+6tuUvQi1KILxAYG
	idcfwtASxxl7O4chalQuVsBnIFZRSvC2eirZcm11rCog2XHA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gn018kc30-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 14:40:58 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-385d2703b64so3716872a91.1
        for <linux-phy@lists.infradead.org>; Sun, 13 Sep 2026 07:40:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789310458; x=1789915258; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=cc7emweiprHjSxKjbMHJ2ac8qRlQv/5NgZ1mLvSzUGk=;
        b=Kr6F/zFIM4JW+33wQYZZ85gJ+G5TRp0+PfY86z7MP3Xgt+uzYZMQbnCBvFgaoeeWfn
         Q9WqCorYdHdEXz4mZOvnZ86OMhC5CKe/jZS3ryTRYhBfoLgaBv57767/SkAOFIjUhmvD
         cxvcyYVrSNSMqcZf+VLc+PBVVpe376c4e3J0iWDCsERtSrTAf8OaBEQ2JgxGBBIka2ut
         /lC46aQHgWblPDeb+4ukiwRF7Bj8G5scjdy53XweUtfM28ulCaf7DKAxjPRYxIkTtewh
         Vbp71xUrIv/V+sAzeo+wQKtffISnsPZSfzRa0Npf+tyY5sZrbYCHdRX2gIHn6kGmse5L
         wgUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789310458; x=1789915258;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=cc7emweiprHjSxKjbMHJ2ac8qRlQv/5NgZ1mLvSzUGk=;
        b=R5nF5XWY4qocbK0ea9VlHzZp/86AO3f1DtYtAQj0BiIF3Sr1eRudZLfa4kpP4LC8j/
         89zRVSKgG82gkecQudJmR4uF5SRnvfJgfEaGMWP53nZrP9PaY7c4ttrngGmOym8JiS1Q
         Hw3x1iA52L4hWAAPiWeTrSM1v8F39poYp3elRcrheruB3P0DxpFooXTtd3+CiR/bXVGf
         pIvWBeR1o7kJOxn8HwbjrvOpfFAn9bKG8WuoTVho34EzRfrNxhq2nF4NJPtVdWEFbOR/
         uu+RWfXbtTFiDXIhwn0uWe+A0ENEJNWEdvjhdKTR9doh8uqgxJHKPDwoittk6rhgTV0y
         o4Rg==
X-Gm-Message-State: AFuF++lhvXSAV7XFVBZyeMj9jmZ+mZ+LF5Vdg/X6G9atf6SOHOMrNnX7
	bFjSr6usTdhQ/PZHFTmHePt04XWIBigxsNhWDqCT+v9/nRKxn9PsLaNBkXHd7eTpzwir4VZ9IIC
	28tKdrqaeHlS/QXKoRxXSOVEI4Jy5g9lMrI5O785U9cqygbMk02j5zyDn4LTYn4hPC89E
X-Gm-Gg: AYBFou21dhFISi976hGOJEW+Pzv9l/fwSQ/EOz/Zxz46y6/G0Mh3dOw1LEjQVFwDAWL
	kJEkldwRPkYLz/MkwxTkIhbaZEHzqBfpo+XRJfeXurbqMJV0ogYr6LVl1w648htxjNPTJ8Ym4MX
	yKl+IsbrSGVj0NkN6j1fG2ldlm/qcRU8ankEBcLeFQp6ImQ4XB2DdHRVTVfkRvsZDjLvyshANRH
	BzlNJy4I+KwfWSUlaRg5+3lq/pOf20/Pu/1thoofjf7Zlpmxi05/bs26WtdC4yoWTtD1A4xj2h6
	QYrkmRAczY2lxhZCJ2Q3Rkra3epEvblEY14XwnZ9jLZTaQirhLSK1bGi+5n1v2Rlq45ZEq+DzD5
	Ik47aZFLylUUIF4W7Ig7FzbNTf4GG2LG36ojoC4atsO5GbuH77hlA+zxMCzZhgOSjyB6ZVA==
X-Received: by 2002:a17:90b:1c02:b0:398:ceed:b903 with SMTP id 98e67ed59e1d1-39dd54df000mr3332328a91.11.1789310457959;
        Sun, 13 Sep 2026 07:40:57 -0700 (PDT)
X-Received: by 2002:a17:90b:1c02:b0:398:ceed:b903 with SMTP id 98e67ed59e1d1-39dd54df000mr3332283a91.11.1789310457446;
        Sun, 13 Sep 2026 07:40:57 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-14382741839sm2904705c88.6.2026.09.13.07.40.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2026 07:40:56 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v8 0/5] Modify interrupt handling for eUSB2 Phy targets
Date: Sun, 13 Sep 2026 20:10:43 +0530
Message-Id: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOy1pmoC/yXMQQrCMBBG4auUWTuQpiKNVxEXTfqr4yKWmaQIp
 Xc36vJbvLeRQQVG524jxSomr9wwHjpKjynfwTI3k3f+5EI/MKpFz5ILVOtSeB0ZaXAh9HOcjqA
 WLoqbvH/Ty/Vvq/GJVL4n2vcPg1KtK3YAAAA=
X-Change-ID: 20260913-eusb2-interrupt-v8-ec30991dba4e
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-usb@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789310452; l=3453;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=Gxqy/sab41dTygvKiRjyoOb28YWcdxxuwKAM8sQA/MI=;
 b=p/ho+MceyjOjapmZ7Nd3A63hZqDqbWufLLpqteA7hiGOffZ5U8fYrhaQL7G9wx7Qs8B7bUY+c
 NNwuXTv+/AeAjllma7Hx9W6ETKLP/miPVMsNyRLla+PeL9PJAPa1QeE
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Authority-Analysis: v=2.4 cv=c4g+0h9l c=1 sm=1 tr=0 ts=6aa6b5fa cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=7T7YwCvgW8qH-pAI4vUA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTEzMDIxMCBTYWx0ZWRfXxlt2mDsS7Dud
 2WtPNZuDJGc6tiJ59C1X58OiYnxxVa74rWg+dZAmM23V5FMmdC24tlMrXcZNaUjkMNdRbVyoq1b
 lad1aHDVcgFrEGmQ2BhsXaLpuSEsAuc=
X-Proofpoint-GUID: BvmmHdcZDCotX3HL--OeKUiHxLkGsLzp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTEzMDIxMCBTYWx0ZWRfX/mEC56pt5J+6
 Vhk0Yem76buZejfJtMTy3glNd4p9D91C0Oh5UCEsQhb2iyk12qFRy531A8OI3rls5+l5LDS/y7d
 0g/YfLjjmCcjHbkhlQZPBeqDU29QZCUG24sC9BBYkw6/n98b4p53Fa15FD8ADKA42aP6mcIzVR1
 dydheEObBu4YXBlA7dfbVjJy9DstMGblnxoTaLBvfNoE8CMl2x0kyaQMhaVKO70QiwPjvPdQLm/
 E71wAShpOhgdu1dh0SLM16uJygu9GPhUsT2rvCGVACx3UN3qGiMV2l+eVEaP9X1WrU6jOb0+FSA
 2BEiwigNoWkp6I8Lw5BFfkQUQr/KQqigL4D67aRy9tQzFSJ5Fei6Wfo4BWgswHim7cyOH8Sb5ZL
 fZjteCR/Nwc6QcJxhMs3EsyAmS45Mzg7DI3SGus2YoGKwDG/kHrbZsG9V2jo9ehDKdMt76mwgbV
 rYHB802QZOlfkGkYTEw==
X-Proofpoint-ORIG-GUID: BvmmHdcZDCotX3HL--OeKUiHxLkGsLzp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-13_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 malwarescore=0 phishscore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609130210
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260913_074059_940181_338B228F 
X-CRM114-Status: GOOD (  15.66  )
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

eUSB2 targets handle wakeup interrupts differently depending on device
speed when operating in host mode.

According to the eUSB2 specification, remote wakeup signaling in host
mode is detected via different data-line assertions based on the
connected device speed.

When a low-speed device is connected, the host repeater drives eD+ to
logic '1' upon detecting a K-state on the USB lines during remote wakeup
(eUSB2 specification, Section 5.5.14).

When a full-speed or high-speed device is connected, the host repeater
drives eD- to logic '1' upon detecting a K-state on the USB line during
remote wakeup (eUSB2 specification, Sections 5.5.15 and 5.5.18).

Since the eUSB2 PHY's "DP" and "DM" interrupt lines monitor the eD+ and
eD- line states, configure the wakeup interrupts accordingly

Add support for a new phy "type" attribute to be set by eusb2 phy drivers
and be read by consumers (in this case usb controller) and act accordingly

Changes pushed on top of usb-next branch. And v8 is only compile tested.

Changes in v8:
Rebase on top of latest usb-next

Link to v7:
https://lore.kernel.org/all/20260905-eusb2-interrupt-v7-v7-0-820cf5377a70@oss.qualcomm.com/

Changes in v7:
- Removed NULL check for phy pointer.

Link to v6:
https://lore.kernel.org/all/20260826-eusb2-interrupt-v6-v6-0-ae2601cfa80c@oss.qualcomm.com/

Changes in v6:
- Update commit messages to reflect why new EUSB2 phy type is added
- Update phy reading via index rather than by name
- Remove redundant header files in phy driver changes

Link to v5:
https://lore.kernel.org/all/20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com/

Changes in v5:
- Add support for phy "type" attribute and set it from m31 and snps eusb2
phy probes.
- Removed adding a new binding property

Link to v4:
https://lore.kernel.org/all/20260709-eusb2-interrupt-handling-v5-v4-0-d4f993925608@oss.qualcomm.com/

Changes in v4:
- Moved to using binding approach as suggested by Thinh

Link to v3:
https://lore.kernel.org/all/20260511094422.3561509-1-krishna.kurapati@oss.qualcomm.com/

Changes in v3:
- Removed multiple glymur-dwc3-mp pdata entries
- Replaced use of ternary operators with if-else

Link to v2:
https://lore.kernel.org/all/20260505194242.1947891-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
- Updated commit message
- added supported eUSB2 targets

Link to v1:
https://lore.kernel.org/all/20260502095616.666938-1-krishna.kurapati@oss.qualcomm.com/

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Krishna Kurapati (5):
      dt-bindings: phy: Add PHY_TYPE_EUSB2 definition
      include: linux: phy: Add phy attribute "type" and associated helpers
      phy: snps-eusb2: Set phy type to EUSB2
      phy: qcom: m31-eusb2: Set phy type to EUSB2
      usb: dwc3: qcom: Modify interrupt handling for eUSB2 Phy targets

 drivers/phy/phy-snps-eusb2.c              |  2 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c |  2 +
 drivers/usb/dwc3/dwc3-qcom.c              | 63 +++++++++++++++++++++++--------
 include/dt-bindings/phy/phy.h             |  1 +
 include/linux/phy/phy.h                   | 27 +++++++++++++
 5 files changed, 80 insertions(+), 15 deletions(-)
---
base-commit: ed2050bc671b44b2c948dbd4347cc534d44ccc9f
change-id: 20260913-eusb2-interrupt-v8-ec30991dba4e

Best regards,
--  
Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
