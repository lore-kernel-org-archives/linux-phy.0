Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 08D2ACA6004
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 01:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EDuX1N6Mu6wYdUxRkUmw49CT01ryYqmGXylKH8L5Geg=; b=j89Bgu0HUjyZSL
	CnyExdiKd6hq0x0936iEBTCx4bbotND90y7HwE0N0jRHuH8Ilr0Y5Dd+0AbIzSnBX4KYpbTASPz05
	H4G+TQiEdUESP6scBtQhZv99PTZpta0NMXF/VoozmcHKOA6I3ZaPuw0njY8DjLpVvI5iqAa4cna9X
	AxEQDQn1CDOHTM6hlEr6kQuMrzvGv/JKqSaTL6SQmAK8lHqmJfdQJtZB+X8lNxkVLRuf/ezQ6C3kj
	FTls004kyOSJ/wwsTlpucUI5IcHxjeUYKzFSHoYVw1NCxY7h9HibY4d2lmxKsuVp/5yA9EE7eYOPe
	AHO6tx9hLYmQigsMGr1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEdHf-00000003NK8-3iWm;
	Thu, 08 Oct 2026 01:51:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEdHc-00000003NJi-1Dgo
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 01:50:57 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6981hXiS434464
	for <linux-phy@lists.infradead.org>; Thu, 8 Oct 2026 01:50:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=FPQv2BXDyf9TNW1n7k+P5bScY5jgJTIXz5h
	lo65sNBs=; b=fNZiUt1CyRqyIvjI2mgVnn9In0nLOZdBFOErt99kLe9R/iYqvOh
	anX/VWD9/wJJVC2OyvVPkLDRHuTSnm5uLAai3YtdYgQagIFCm45+CDbD2YLcUyte
	/GaRERDVrVW4QJSp6W/eJlZxsPrCrvFQqzKX/Yb18i4j6qxSG1IduOBrv2QvVJjc
	JdEB3RnHTCX0MIjBnhNf83h7lGh7YIGIfZW4hB8R28E7FXYGvFdDMGwmqaHYKfKC
	d5Dr6yeYVERw03sVY580XKPSs4kaCoGUqx08L/g36ut+np7/u3PjslW46PWE7EFl
	QMXZhNA2ojTEE2bgeaAdAmNv043ugu4c0lg==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h5xe38jt2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Oct 2026 01:50:54 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-34ef0362d95so8803788eec.1
        for <linux-phy@lists.infradead.org>; Wed, 07 Oct 2026 18:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791424254; x=1792029054; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=FPQv2BXDyf9TNW1n7k+P5bScY5jgJTIXz5hlo65sNBs=;
        b=E5FrJNJz+E6dcBA+j5OX7py1Po7oEpPyquUZi4uwFhmP5IPDqIG8Ccbd0eKCNcMLYr
         Jk6eXqCprDQR3Fqu4DlXsod/0KFQsQnEMzlrni2sXH0c2qaViE7gJIEEkAD+7e3LjzyU
         hstM3pM1j9Q2ugaL5o3F2pAbgZKLxsQGcwZyyP594wS0Ax3f4fLQvMjPmWSsdcKPZRqv
         Ul4nYTFB4e7/nZ67405HCHYJnprvtaSc7jcIiNduSv9zOAi54so43qb/cW1dy6ZIrGuM
         TJ1rTxCEaAIestsWdb5v/nLk4qnCA2AsTJoSFdxKQnghtBPdYigsS5n1VToBga+VtMZT
         P6sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791424254; x=1792029054;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FPQv2BXDyf9TNW1n7k+P5bScY5jgJTIXz5hlo65sNBs=;
        b=foPba51o1PBGMz37XcM9Nafn4EuuB6vEcR2sNUA8ANqK+x6pSMa4he21ToxCK7jCu0
         fALT8xIPocNcskaK2z/hPNMRg+1JRtzsrCsYrklXzw5UbOm5Gq18pzQNSy34XyCe+mIn
         uU97ZQeNmAi3uXvSbvkaFOA6lJV0u1GTaXGH988u2R9Ctllc4PCa69v01TuwleehllgQ
         uFBpru7fvAD0O7+WIRCvGlNftKJWHwaMprMyrgOCij2xlv2rrceSDDqwus7EojNABJUM
         M6+UoLvTTL9HxW0CANRj8udcvu6OxBnzli+/u5NVj1uP0+a9xA1biDDM432HhU8t8NxN
         Y2xg==
X-Forwarded-Encrypted: i=1; AKwUvByeNLitXVUJBW5C4u2BUL+xW3rS0bZCcJgTtgYwq9xhj2kDaiEq87OmnWfbMmgvSikwXiIgq0tz7gA=@lists.infradead.org
X-Gm-Message-State: AFuF++k71o9q6CCIKwC3t/7EA0IqI1Y+6quYWcV+d9W+fKvpAbcheuHc
	zh82AY39XArrsbafXfjvFT44aWJiO5uERtT445OT+mUZ3grXAOqeu8d+F2MaVwwGMMv3V6LZXPe
	6UkrCALO2WTRy686vPYmj81doKwy3ycbfc12AnynnwF/6GVo34/XgcZyhgcykbIa7HShr
X-Gm-Gg: AYBFou1ggGDhwfnvVJzQi57jg3GZALVHRxD9j5oqFMBv5QuhFECDfkX4O6RzkeC1KwS
	PJdTAUUiXSFqm1uF9W5hw5rLJ6oSd0xMIjlVJ+KhHOdIdjK1w3lq5p53KzwR1oyGNFVsG5kzYoN
	WCRLpPnvm+wJ4nHli0QxIVCdqx06xb9kScldXrCsofQcZjuyF1VLPxQQZ6ZrSyBa30ujwItnoLw
	u4bxJJ9JwYh6Wz/WzMvnB+egoLHetDK+RENQm8jIDFWsZXzaEuxrbujsdGCXZT3A2Ici4IRwIiS
	Fsij8dAQxrMDV6E6XUEeNw+i1I7sHH2ECeQd6Ml+2exjhAVmM+fJqixzBu2b2+ogvBvQWKK6Zl2
	hdCRPTpWX26PDXCJZUj95K7P7t7WR/eVXQkcXOfIt5IJojk5FJNQWUvST+/4=
X-Received: by 2002:a05:7300:e9c8:20b0:34d:3ad2:680e with SMTP id 5a478bee46e88-3515dd51cd5mr5153698eec.14.1791424253605;
        Wed, 07 Oct 2026 18:50:53 -0700 (PDT)
X-Received: by 2002:a05:7300:e9c8:20b0:34d:3ad2:680e with SMTP id 5a478bee46e88-3515dd51cd5mr5153648eec.14.1791424252763;
        Wed, 07 Oct 2026 18:50:52 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3515abb7117sm11761823eec.3.2026.10.07.18.50.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Oct 2026 18:50:52 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 0/3] phy: qcom: Describe the AHB2PHY bridge clock on Nord
Date: Thu,  8 Oct 2026 09:50:14 +0800
Message-ID: <20261008015017.3359804-1-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Proofpoint-GUID: N0JLJ_uC6XTqb_BCNXFyNtgO8_l_GDKi
X-Authority-Analysis: v=2.4 cv=QOz91QLL c=1 sm=1 tr=0 ts=6ac6f6fe cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=oDUT7GkQECwNgSz8oMgA:9 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA4MDAwNyBTYWx0ZWRfX0tAR+86ZadQ9
 feECsalYZL5hqlUXbbEV6g9Wszok1PPc3+q0izqyu7E0bv3X8z/VrUckOWZlbrDxTDJxL85VqvT
 nMlJ0BiB09WHHRTOAq5WO3XcJ+YzMrM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA4MDAwNyBTYWx0ZWRfX+n1Zx7ElkmO+
 JrVHDmCkCt6eZwZO3EZVi/Af/Jf4nndnYMxdYpUcx9I8di0DGVYzi4/Xpljuqq89g4aomYCMIrH
 piNZYGJDABg1SjjXfW1zOcNT0P6eJdu4OdSSQ0GscgXwON6KTA5VBis5f/WWDcP2gUbDW82aEMA
 LFkrT9qZd713en41swBjzF6PQGGKM6Tr/v3vIXGEU+3WGN9BAcmXexnuchfQPFqeOC/NhFJVnDI
 2NWXLGLywY+biyAAI5aW5ZGSvD/N15DUX8Kyo7mvYAjfhyw6epzZnRiREmX8Ekk8xY/lE8/i2jD
 LSm7A8t3dh6r9wwrJVYaFLBP2ZWLtUPx+wjZGEAa5pP700U6nNQVfrCgpjXti2U3wpjUKyRDlnd
 zp1KkO0uLZvfD6ltRkPfdr69bkxqv4Z04Lp1xkG4k8Wy+f8VO7k3xXNb8qAU1HxKJWe5vrj+Gvr
 3PnIs+p2RQZMPoZPTfQ==
X-Proofpoint-ORIG-GUID: N0JLJ_uC6XTqb_BCNXFyNtgO8_l_GDKi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-08_01,2026-10-06_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 spamscore=0 phishscore=0
 impostorscore=0 adultscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610020000 definitions=main-2610080007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_185056_510192_C2769D55 
X-CRM114-Status: GOOD (  12.12  )
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

On Nord, the register space of all the USB PHYs (the two USB3-DP QMP
PHYs and the three eUSB2 PHYs) sits behind the AHB2PHY_0 bridge, which
is gated by NE_GCC_AHB2PHY_CLK. None of the PHYs currently describe or
enable that clock, so clk_disable_unused() gates it before the PHYs are
initialized. The PHY init sequences then never reach the hardware and
the controllers fail to come up:

  dwc3-qcom a600000.usb: DWC3 controller soft reset failed.
  dwc3-qcom a600000.usb: error -ETIMEDOUT: failed to initialize core
  xhci-hcd xhci-hcd.2.auto: can't setup: -110

As a result, USB on Nord only works when booting with clk_ignore_unused.

An earlier attempt marked the clock always-on in the NE GCC driver [1].
This series instead makes the PHYs consumers of the bridge clock, so it
is only kept enabled while a PHY is in use:

 - Patch 1 adds a fifth "cfg_ahb" clock to the Nord QMP USB3-DP PHY
   binding. The qmp-combo driver already gets all clocks in bulk, so no
   driver change is needed.
 - Patches 2 and 3 add a "bus" clock to the Nord eUSB2 PHY binding, and
   Nord-specific match data in the snps-eusb2 driver that enables it
   alongside the "ref" clock.

[1] https://lore.kernel.org/r/20261007073146.3162478-1-shengchao.guo@oss.qualcomm.com

Shawn Guo (3):
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Nord cfg_ahb
    clock
  dt-bindings: phy: qcom,snps-eusb2-phy: Add Nord bus clock
  phy: phy-snps-eusb2: Enable AHB2PHY bus clock on Nord

 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  2 ++
 .../bindings/phy/qcom,snps-eusb2-phy.yaml     | 22 +++++++++++++++++++
 drivers/phy/phy-snps-eusb2.c                  | 13 +++++++++++
 3 files changed, 37 insertions(+)

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
