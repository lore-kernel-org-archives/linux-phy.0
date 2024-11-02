Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02DCCE6894B
	for <linux-phy@archiver.kernel.org>; Sat,  2 Nov 2024 03:54:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T/W7FYyPK8qyoEtUrapNDxydhq+hps7axqouNK9i8jE=; b=al6vYgycve0a0r
	vh5LBcegEcSaMHvwwpSpTo4jOk/8K6xk2QoWII6Cm+LhSbDXvXdgUNPZ4w4Ykr5L8A5rBosKwLL+H
	j6KrWevV7AeFKsp/Fu9RFdxknfnZGAdgUHBRekz0zRfJW2rp31cabqLRXL8QzdYjnLtPXxQzpVrbU
	9rUKNMvoUCF1tqZV4GzZ2bHkppsdbVJ48xuzHSIlmha0J7HtYpkkR/g7a/O8Z67e4qH7M7yJ00UpA
	DM3BYeDGIklxlE2S1AcAWx8UiYAb1BsedVrUoh2so30pwEbW3LcNaSzRrfgHfbf4rNf36ePUAgGeR
	PY6WEttfQuGQFlpDdqPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t75DQ-00000008yfN-0zno;
	Sat, 02 Nov 2024 03:54:20 +0000
Received: from pv50p00im-zteg10021401.me.com ([17.58.6.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t75DN-00000008yev-1UHC
	for linux-phy@lists.infradead.org;
	Sat, 02 Nov 2024 03:54:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1730519653;
	bh=xlxxWuHtdUZSNGnMupwcBRSja7uiXJHdtgOzQJyG6DQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:
	 x-icloud-hme;
	b=BY6bjFZ3zmF/M8+lLFLPHdb+fs6oo+UZrYmCZTBvAIKa//KXcc9iHFQ06xRTh2KaN
	 lsZQjRkZap8Wh43CWLW3GwvMJjLTQXP2oBSCAtXKvU0fgIexJ5Xz6yJIN7KY2q9oTX
	 FvkowVcZRpQRQWgqiF5yvYrs3ZtzaHL5eZ4Zq7rXFCM7V4cqDwDL6z0YUUGY85akV+
	 dq2Grk4YY5PKMjlVq/RY3SErsjw/zEP9Fho3RUF75RUzJPyW2ZZ78BUFlL8Ww7qrU7
	 AigarVHbeGt3FdkM8RTB1nl8D7Q6b4rk/UgDBgzKx/rBFlfRMn5GE7qU29W0P7CCLG
	 S6AL+tUf6l4rg==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-zteg10021401.me.com (Postfix) with ESMTPSA id B81F88E0218;
	Sat,  2 Nov 2024 03:54:02 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Subject: [PATCH v4 0/6] phy: core: Fix bugs for several APIs and simplify
 an API
Date: Sat, 02 Nov 2024 11:53:42 +0800
Message-Id: <20241102-phy_core_fix-v4-0-4f06439f61b1@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAEaiJWcC/3XNTQ6CMBCG4auYrq3pD1Jw5T2MITCdShdSbLWRE
 O5uYYUYl98kzzsjCegtBnLajcRjtMG6Lo1svyPQ1t0NqdVpE8FExplgtG+HCpzHytg3RVnr/Ki
 bsjCKJNJ7TOcld7mm3drwdH5Y6pHP1z+hyCmjTBUsF0bpWvHz42XBdnAAdydzKoo1zzZcJG6AQ
 S51Y8DIXy5XXG6/y8R52ZQKJELJ1TefpukDkR3tpygBAAA=
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
X-Proofpoint-ORIG-GUID: bKDoCi3h4Kfl4oMlH4_7A_7ORU9H-yE3
X-Proofpoint-GUID: bKDoCi3h4Kfl4oMlH4_7A_7ORU9H-yE3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-11-02_02,2024-11-01_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0 clxscore=1015
 mlxlogscore=617 malwarescore=0 adultscore=0 mlxscore=0 phishscore=0
 suspectscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2411020031
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241101_205417_451353_7916ADB5 
X-CRM114-Status: UNSURE (   6.60  )
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
