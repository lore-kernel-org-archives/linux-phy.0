Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07C63E7717F
	for <linux-phy@archiver.kernel.org>; Fri, 13 Dec 2024 12:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FiOu1kh01xYS3RqYAzXulOt45F8WXwJNH5CXx0A6dKo=; b=VzW7KbNtGotpFB
	A5LooQa321TRgXCHr4wWrnnD88gC+hI3eF2RPpThcIty3QDU3J7fo7HUx1TwORhYwWHWyAakNsmWP
	GNtJf4C4DfoXMUl8dU3uLRS85zDRXInot8xQsEST38jQrNER3NnozFBMogD2T+49DGgIwbim1hvdA
	febHm0zjeFbG2Ol8G5vOLJNNvDM3nHIJSMT6jivNgnCQ9qq5GfcXALFV1tbycZBepucO/cfIPmnWq
	DYz+woZxvq3kR+gSpghgaCg8Gc/Pa0D6unSAOlLX90POI2n+ctHdhKRbIi6sGDTmdREzaZFLMjVfB
	WS1IPcjhjHx6xuVnwNNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tM4v1-00000003jYt-11Bo;
	Fri, 13 Dec 2024 12:37:19 +0000
Received: from mr85p00im-zteg06021501.me.com ([17.58.23.183])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tM4uy-00000003jW5-2Fib
	for linux-phy@lists.infradead.org;
	Fri, 13 Dec 2024 12:37:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1734093431;
	bh=tBmdorHexJDbaVxxT3/6hbHf9p9VMgVpSp+5k/9BvGE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:
	 x-icloud-hme;
	b=mdwwy2yWI5YhrnHr6H1JXbORHwkGPn/M8cU0dudU4/Zt45e/IxG8aY3ruIw6F/02q
	 67xsGC1ngT+UcSFJUcFrzJuvtUxre59pgwEEYmH8+VbHD2uosJs5SP3bfAF0RZVp/c
	 oKP6C/736DhZNOCVLhay3vrF6tCDj6HF9ldrcfVrJ/zhYk9BJncdTQ3yVJDdC5WNr0
	 rkG6e1Qf8cwdhNBpmsQQUkYxtjU8N0pNthrcTjG60t6ileqsAfafx/xhUN6Cft5tA2
	 jSgoWt4I4Bm9dN5066Pp5vD54EtdhRbn2fuWohD3rPDExm83rj3RckryXg8kEz2G0m
	 1i9QVdL4t68eA==
Received: from [192.168.1.26] (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-zteg06021501.me.com (Postfix) with ESMTPSA id 9105B2793FFE;
	Fri, 13 Dec 2024 12:37:03 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Subject: [PATCH v6 0/6] phy: core: Fix bugs for several APIs and simplify
 an API
Date: Fri, 13 Dec 2024 20:36:40 +0800
Message-Id: <20241213-phy_core_fix-v6-0-40ae28f5015a@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAFgqXGcC/3XOTW7CMBAF4Ksgr3Hlv9gxq94DVSgej4kXJKlDo
 yKUu3dg0xBg+Ub63psrG7FkHNluc2UFpzzmvqNgtxsGbdMdkedImSmhjBRK8KG9HKAveEj5l6N
 uoq1i8HVyjMhQkM73uv0X5TaP575c7u2TvF3fFE2SCy5cLaxKLjZOfn7/ZMgdfEB/YreqSS25W
 XFFPIEAq2NIkPQz1wuu1+uauPTBO9AIXrpnbv45za+4IW6SsEb7ZGV48Xy15HbFK+LeOWkrhaG
 u4ZHP8/wHutYp7KYBAAA=
X-Change-ID: 20241020-phy_core_fix-e3ad65db98f7
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Lee Jones <lee@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Johan Hovold <johan@kernel.org>, Zijun Hu <zijun_hu@icloud.com>, 
 stable@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>, 
 Johan Hovold <johan+linaro@kernel.org>, Simon Horman <horms@kernel.org>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: -4iegzmlDL25f_xl1g4tkTrbg6ED_ZbF
X-Proofpoint-GUID: -4iegzmlDL25f_xl1g4tkTrbg6ED_ZbF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2024-12-13_05,2024-12-12_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 phishscore=0 bulkscore=0
 clxscore=1015 mlxlogscore=461 adultscore=0 mlxscore=0 suspectscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2412130089
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_043716_585921_3A07949C 
X-CRM114-Status: UNSURE (   8.45  )
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

This patch series is to fix bugs for below APIs:

devm_phy_put()
devm_of_phy_provider_unregister()
devm_phy_destroy()
phy_get()
of_phy_get()
devm_phy_get()
devm_of_phy_get()
devm_of_phy_get_by_index()

And simplify below API:

of_phy_simple_xlate().

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
Changes in v6:
- Use non-error path solution for patch 6/6.
- Remove stable tag for both patch 2/6 and 3/6.
- Link to v5: https://lore.kernel.org/r/20241106-phy_core_fix-v5-0-9771652eb88c@quicinc.com

Changes in v5:
- s/Fixed/Fix s/case/cause for commit message based on Johan's reminder
- Remove unrelated change about code style for patch 4/6 suggested by Johan
- Link to v4: https://lore.kernel.org/r/20241102-phy_core_fix-v4-0-4f06439f61b1@quicinc.com

Changes in v4:
- Correct commit message for patch 6/6
- Link to v3: https://lore.kernel.org/r/20241030-phy_core_fix-v3-0-19b97c3ec917@quicinc.com

Changes in v3:
- Correct commit message based on Johan's suggestions for patches 1/6-3/6.
- Use goto label solution suggested by Johan for patch 4/6, also correct
  commit message and remove the inline comment for it.
- Link to v2: https://lore.kernel.org/r/20241024-phy_core_fix-v2-0-fc0c63dbfcf3@quicinc.com

Changes in v2:
- Correct title, commit message, and inline comments.
- Link to v1: https://lore.kernel.org/r/20241020-phy_core_fix-v1-0-078062f7da71@quicinc.com

---
Zijun Hu (6):
      phy: core: Fix that API devm_phy_put() fails to release the phy
      phy: core: Fix that API devm_of_phy_provider_unregister() fails to unregister the phy provider
      phy: core: Fix that API devm_phy_destroy() fails to destroy the phy
      phy: core: Fix an OF node refcount leakage in _of_phy_get()
      phy: core: Fix an OF node refcount leakage in of_phy_provider_lookup()
      phy: core: Simplify API of_phy_simple_xlate() implementation

 drivers/phy/phy-core.c | 44 +++++++++++++++++++++-----------------------
 1 file changed, 21 insertions(+), 23 deletions(-)
---
base-commit: 9d23e48654620fdccfcc74cc2cef04eaf7353d07
change-id: 20241020-phy_core_fix-e3ad65db98f7

Best regards,
-- 
Zijun Hu <quic_zijuhu@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
