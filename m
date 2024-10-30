Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA6AAD5CCB2
	for <linux-phy@archiver.kernel.org>; Wed, 30 Oct 2024 14:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V/M2ic0/jlEgqG/Q0xWjmLasOZwwCd6Pzog6INCvf6c=; b=KsrlIOKolohP/y
	GSsu2/2vaCdmJEeVA9g8IUIpFq923mHQ7dJeKqWyzmukDD5hIcI9l+RJ1bB+r4fxcXOzOJ2dOD/Ia
	JWVIrzp2x87K9qQi3cL0AXHEr7TZTzicV+Mvu9w4ojqdealkftqa9rxp1o3sacl0NLYnYro7Ok4u3
	A5q+py3hVDiOY3GZ4YN8lVc+rXilBz5F0b4ZLmcnXcQB12NTmxf3SRE1+SeToiV4Ic5qHWYUmOlf2
	FM/qSRFY2JrqurNxg3AM1bkkMkHldLqlCB368yCdY1FAUUvQh1CyywW/yt0m4sef+E8Pjv43SzYLA
	waQnDAvBIvEaZ+0D5XkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t69XD-00000000d0N-46Mq;
	Wed, 30 Oct 2024 14:18:55 +0000
Received: from ms11p00im-qufo17291901.me.com ([17.58.38.48])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t69XA-00000000cza-3c5m
	for linux-phy@lists.infradead.org;
	Wed, 30 Oct 2024 14:18:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730297931;
	bh=A0FjAboQMvWQEwQxQlDsfwbUrI6ArBb/7lMBqoOc/vk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To;
	b=uUqa9uOn2LYsDKt84Ak+9ii74t8r31TCJ9Rn5OCZtzlKGBTAl3piGlnbW/At1m1A4
	 DH9ttyi6mQhOuIwfv/RoYXRVh3SUKlDHQiTwz/sWAdRJdh20gzmdHJTKurIsRG6JD7
	 3jdbPqyVMCKbl54XoCO2pJJbqdcWU68l8VI/bAMmACHzv0RjRt87XCbQkEaCgbZAxl
	 0au+S3gaywbC2RYnQOY8h5TjaoqDwD1uHMovjxmt/q+Gwm482TTfOMSG8j+uRpyOD7
	 pFwFXIa84Dj/hYyFPBwEVv5LlAWKiBLMFqRGFnEFLSxV8Q0oqqWH30DAgvEj3B4mDC
	 grfnjiOjGfXNA==
Received: from [192.168.1.26] (ms11p00im-dlb-asmtpmailmevip.me.com [17.57.154.19])
	by ms11p00im-qufo17291901.me.com (Postfix) with ESMTPSA id AA92ABC001F;
	Wed, 30 Oct 2024 14:18:42 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Subject: [PATCH v3 0/6] phy: core: Fix bugs for several APIs and simplify
 an API
Date: Wed, 30 Oct 2024 22:18:23 +0800
Message-Id: <20241030-phy_core_fix-v3-0-19b97c3ec917@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAC9AImcC/3WMSw6CMBQAr2K6tqYfpOjKexhD4PVV3kKKrTYSw
 t0trNTE5UwyM7GIgTCy42ZiARNF8n0Gvd0w6Jr+ipxsZqaEKqRQgg/dWIMPWDt6cdSNLfe2PVT
 OsJwMAbNed+dL5o7iw4dxvSe52D+jJLngwlSiVM7YxsjT/UlAPezA39iySuozL35ylXMHAkptW
 wdOf+fzPL8BLUBLnukAAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Lee Jones <lee@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Johan Hovold <johan@kernel.org>, Zijun Hu <zijun_hu@icloud.com>, 
 stable@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>, 
 Johan Hovold <johan+linaro@kernel.org>
X-Mailer: b4 0.14.1
X-Proofpoint-GUID: WLAiNkZScdIytT8vNc4q0i79dFMb4KO3
X-Proofpoint-ORIG-GUID: WLAiNkZScdIytT8vNc4q0i79dFMb4KO3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-30_12,2024-10-30_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0 clxscore=1015
 adultscore=0 malwarescore=0 mlxlogscore=684 phishscore=0 bulkscore=0
 mlxscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2410300113
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_071852_961953_2EDDC789 
X-CRM114-Status: UNSURE (   6.71  )
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
Changes in v3:
- Correct commit message based on Johan's suggestions for patches 1/6-3/6.
- Use goto label solution suggested by Johan for patch 1/6, also correct
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

 drivers/phy/phy-core.c | 43 +++++++++++++++++++++----------------------
 1 file changed, 21 insertions(+), 22 deletions(-)
---
base-commit: e70d2677ef4088d59158739d72b67ac36d1b132b
change-id: 20241020-phy_core_fix-e3ad65db98f7

Best regards,
-- 
Zijun Hu <quic_zijuhu@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
