Return-Path: <SRS0=Nkk4=I5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECF2AC433C1
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 12:23:01 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B8D861998
	for <linux-phy@archiver.kernel.org>; Wed, 31 Mar 2021 12:23:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B8D861998
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ga4bRQgU6MW75SREB030D7fLcaf67YArnyG4kvWGC0E=; b=FZaXTGpnqjW1TSAjw60GSi+z7
	ls72Mi4w+7R+MNtXECHf3qFSc+Wvr4u+IJlUOHUGwhB3bfjogrs37k3naeyez+I0GGNnge+tdScZ9
	3o2d9yYHNESXXGz2lc48BtFaA17Mki6PqbQwSVt6M4meTWD5YR2XdNRNyFrNmZfGrzdTixvVprN3V
	IunCu7EK2k2ui1AJyfcc2YZUwmLzRLkIzOJp/ucSoZzbG1X5FKRcmX0cntq32LI6tR6oWU12Q2qBl
	sk4BhJUNAtQRAK1jgOSN21icrZyQBVEYpyqOSAZ77JYMjjsbLLiYIv9tBDPNsOjn1gPXvYqawwbbs
	BRg2+exGg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRZsB-006YeC-4G; Wed, 31 Mar 2021 12:22:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRZs7-006YdZ-8V
 for linux-phy@lists.infradead.org; Wed, 31 Mar 2021 12:22:57 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id D82F26198F;
 Wed, 31 Mar 2021 12:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1617193373;
 bh=1JiCJZdLpge4QRk61c2bdfMSYMM5/ZEtJKjCa5IcbFE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FIF1+1parke0flNNrBG/PNNUuZOT38aLJBXV6NBEQ5/Jp5+d8DSGkJKJ8DnhZUd/K
 nSQuX9064Y+DO4CkwvZMkvmLSnIYxgbIckJuWK1p8xLOSEgeiQAeDSFxISQ1cy2Eaz
 svNIy9S1fDRhQt1gc6GzPmhrFG3c5zhwex0WeJJai8jLtzC7S3wHYiQQ3Tr8w1yjYn
 qSNkNXY7+uaA9Kn0OttHQniboMyZVmt3DylcCseP2cl150FvVJ/qUB7+mKBdGjh7Ai
 c9pTGVDyRVODqs5tzSXLeWDBzbgV/pQjnOA9RnjMSrQNhWbZICgMCNiaPmI6GnPsW6
 k5HxxdPTsgUxw==
Date: Wed, 31 Mar 2021 17:52:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Rob Herring <robh@kernel.org>
Subject: Re: [PATCH RESEND] dt-bindings: phy: bcm-ns-usb3-phy: convert to yaml
Message-ID: <YGRpmStAzQBVFeU9@vkoul-mobl.Dlink>
References: <20210329165056.31647-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210329165056.31647-1-zajec5@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_132255_552027_41DC7CC7 
X-CRM114-Status: UNSURE (   4.74  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjktMDMtMjEsIDE4OjUwLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IDEuIENoYW5nZSBzeW50YXggZnJvbSB0
eHQgdG8geWFtbAo+IDIuIERyb3AgIkRyaXZlciBmb3IiIGZyb20gdGhlIHRpdGxlCj4gMy4gRHJv
cCAicmVnID0gPDB4MD47IiBmcm9tIGV4YW1wbGUgKG5vdGljZWQgYnkgZHRfYmluZGluZ19jaGVj
aykKPiA0LiBTcGVjaWZ5IGxpY2Vuc2UKCkFwcGxpZWQsIHRoYW5rcwoKLS0gCn5WaW5vZAoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
