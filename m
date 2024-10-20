Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C260ED3C934
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 05:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OMfPu6OONn3WfGSgjttAs/X4eb13kLSlXq2trcGSTck=; b=ssMwfZyoSSZ3Ch
	kdiZ80sM7ZfiQIPlA+oXMOWEaJoEwjlGB2Sbe6u/fNYJG038U/p4L7LY+f0KbNDcerflemrs1fAXg
	DDvqOroSkpXBPPZmPkCKHgfBNjtFHvNMQBmnP1D72gdwuEtDgfc5/cPWUe5P4yXSNLIIJiBUfZzUm
	jMtXlDHnfU5BjawfMtJY752AoFk8M46mHpLp4zkzofD/S3tQsLe582NXXW2fizywfqMXBkhCkAmGH
	dl8ivpbT6zgbWtToPXdt2blmOZuVFDVAFGVzFnduWwhPsPn6oWHKBe/1neOdSeAFXk0wDXHWBj8FR
	pYYncCvpRf/ia/sAbADw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUr-00000004Rsl-0bzF;
	Sun, 20 Oct 2024 05:28:57 +0000
Received: from pv50p00im-hyfv10021501.me.com ([17.58.6.48])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUp-00000004Rra-05a1
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 05:28:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729402134;
	bh=rVON13sMMqtKSwCrl4E1Uhkm6hLNfvRtGi981NVB7Gs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=ou5YHP16ry9CgCybtpG62r35ZB2cpiklwmT1he10nlofB7CO0oQAY7P6knGVfStrr
	 yBHd4FL3CbryCTpHZiGvlUqpAwIJuCz1SGhnCSMegnb0s4chbCotaXY5qCM7iwVsNm
	 x9gTXClBdLxoOSTIa/hsOwn5k/IFUpuhe8+O84o2bpcvE9ZNYahhHOm/NMzj5flyGg
	 Gu69Wosh8q8FpXgoaGr5LnQQpxlJcHOliGHy+88OWLHps3KIDYPV0MJ8y0AbgpBwuY
	 p4f0Qq0jSPQ1Ae9OWaKCljqZAv3IVssLla7cnWNzd4dazBw8+ni3tVqzaGCfj3xMCd
	 fj92LWGujUoww==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10021501.me.com (Postfix) with ESMTPSA id CD6C22C0130;
	Sun, 20 Oct 2024 05:28:48 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Sun, 20 Oct 2024 13:27:50 +0800
Subject: [PATCH 5/6] phy: core: Add missing of_node_put() in
 of_phy_provider_lookup()
MIME-Version: 1.0
Message-Id: <20241020-phy_core_fix-v1-5-078062f7da71@quicinc.com>
References: <20241020-phy_core_fix-v1-0-078062f7da71@quicinc.com>
In-Reply-To: <20241020-phy_core_fix-v1-0-078062f7da71@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Lee Jones <lee@kernel.org>
Cc: Zijun Hu <zijun_hu@icloud.com>, stable@vger.kernel.org, 
 linux-phy@lists.infradead.org, netdev@vger.kernel.org, 
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.1
X-Proofpoint-ORIG-GUID: hKZD5y-4RY3sylApKTy1YAx6Oj9Jx6jl
X-Proofpoint-GUID: hKZD5y-4RY3sylApKTy1YAx6Oj9Jx6jl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-20_02,2024-10-17_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 adultscore=0 bulkscore=0
 mlxlogscore=999 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2410200032
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_222855_114819_53256621 
X-CRM114-Status: GOOD (  11.16  )
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

From: Zijun Hu <quic_zijuhu@quicinc.com>

The for_each_child_of_node() macro automatically decrements the child
refcount at the end of every iteration. On early exits, of_node_put()
must be used to manually decrement the refcount and avoid memory leaks.

The macro called by of_phy_provider_lookup() has such early exit, but
it does not call of_node_put() before early exit.

Fixed by adding missing of_node_put() in of_phy_provider_lookup().

Fixes: 2a4c37016ca9 ("phy: core: Fix of_phy_provider_lookup to return PHY provider for sub node")
Cc: stable@vger.kernel.org
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>

---
The impact of this change is wide since of_phy_provider_lookup()
is indirectly called by APIs phy_get(), of_phy_get(), and
devm_of_phy_get_by_index().

The following kernel mainline commit has similar fix:
Commit: b337cc3ce475 ("backlight: lm3509_bl: Fix early returns in for_each_child_of_node()")
---
 drivers/phy/phy-core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 967878b78797..24bd619a33dd 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -143,10 +143,11 @@ static struct phy_provider *of_phy_provider_lookup(struct device_node *node)
 	list_for_each_entry(phy_provider, &phy_provider_list, list) {
 		if (phy_provider->dev->of_node == node)
 			return phy_provider;
-
 		for_each_child_of_node(phy_provider->children, child)
-			if (child == node)
+			if (child == node) {
+				of_node_put(child);
 				return phy_provider;
+			}
 	}
 
 	return ERR_PTR(-EPROBE_DEFER);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
