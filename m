Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4088D3C934
	for <linux-phy@archiver.kernel.org>; Sun, 20 Oct 2024 05:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XONzYwTEhC8C1UlrhLBrH8dBAcL2eRPQOZdAi6vIsdI=; b=hywnsPbzZUfapV
	qO7hBakfkYoL+SUCEPwJvuQaWFPOyQidOprPzYilrJaIY9EAUeEgkVbEE20JqjgXPUp887WAKKy7b
	Zq2zVtKA2eg2lh3zltBe9h134h7JfNzHDPjDvAeGDSSUi/aSoj/Qpcm7f6hunm1hzOUw39ClE0Rce
	VOAmD0ey0+B8iDWavEmNU0A7A87hdVwOPBvZpmR7iGR1dHPZYAbc9mefgl1RE6QFFk4lHt1zljoBS
	kEXP1PP/O07ylzKzoxUim0hDJa8ovLTIbmE5gS6NFyHu2INi/xB1Tou03mOs9qs04qiFxMN8SyMyU
	nSlxhda6dnHwr7JrMZ4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUl-00000004RqU-1wzI;
	Sun, 20 Oct 2024 05:28:51 +0000
Received: from pv50p00im-hyfv10021501.me.com ([17.58.6.48])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2OUi-00000004Rpn-379B
	for linux-phy@lists.infradead.org;
	Sun, 20 Oct 2024 05:28:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; t=1729402128;
	bh=bqgD9TqeRl3fISVSF8RjYIENXrO/0dTFirpvQNfH4Dk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To;
	b=gpwA6Nebi6sHyPqVwriErkrRAhyENlFTXgZcArARP8mEwzKBlNqcKlFYAJFtkECLL
	 ya6kIrNGTXEdErFwr9yHehnypMbo9TDrumZZVglnayEeMonZDR5aZs/1tiJDj2Fw9+
	 J3ydjynv9shdosxmzgJvzSjJPXAjWXXdlUQ+szT2HoIjJhJYbHqH6eXd1vvyxofr2f
	 GmoO62berrK2gd/Yg3SXJDmt9x+R3qrzq0AgXDWFse12ZjC6bDj+QnAWaW6//FYFKY
	 gNmBNGcpgnjES50eYR2OZ5vIeOUL4gQ8+J7hbss9dMaXasTJCXA6ivJJwcJs6DTzZa
	 vefo6h7EQZJsg==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10021501.me.com (Postfix) with ESMTPSA id 7D78D2C013F;
	Sun, 20 Oct 2024 05:28:42 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Date: Sun, 20 Oct 2024 13:27:49 +0800
Subject: [PATCH 4/6] phy: core: Add missing of_node_put() for an error
 handling path of _of_phy_get()
MIME-Version: 1.0
Message-Id: <20241020-phy_core_fix-v1-4-078062f7da71@quicinc.com>
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
X-Proofpoint-ORIG-GUID: UKGJg6bDUiFHKz2zU5QVA92RCrgayaQo
X-Proofpoint-GUID: UKGJg6bDUiFHKz2zU5QVA92RCrgayaQo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1051,Hydra:6.0.680,FMLib:17.12.62.30
 definitions=2024-10-20_02,2024-10-17_01,2024-09-30_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 clxscore=1015 spamscore=0
 malwarescore=0 phishscore=0 mlxscore=0 adultscore=0 bulkscore=0
 mlxlogscore=999 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2410200032
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_222848_833750_F83DCD0E 
X-CRM114-Status: GOOD (  10.80  )
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

It is wrong for _of_phy_get()  not to decrease the OF node refcount which
was increased by previous of_parse_phandle_with_args() when returns due to
of_device_is_compatible() error.

Fixed by adding of_node_put() before the error return.

Fixes: b7563e2796f8 ("phy: work around 'phys' references to usb-nop-xceiv devices")
Cc: stable@vger.kernel.org
Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
 drivers/phy/phy-core.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 52ca590a58b9..967878b78797 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -629,8 +629,11 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 		return ERR_PTR(-ENODEV);
 
 	/* This phy type handled by the usb-phy subsystem for now */
-	if (of_device_is_compatible(args.np, "usb-nop-xceiv"))
+	if (of_device_is_compatible(args.np, "usb-nop-xceiv")) {
+		/* Put refcount above of_parse_phandle_with_args() got */
+		of_node_put(args.np);
 		return ERR_PTR(-ENODEV);
+	}
 
 	mutex_lock(&phy_provider_mutex);
 	phy_provider = of_phy_provider_lookup(args.np);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
