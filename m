Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B066FD2F7D5
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 05:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:MIME-Version:
	Content-Type:Message-ID:Subject:To:From:Reply-To:Cc:Content-Transfer-Encoding
	:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2sO5d4+eI4EbYYw7MuQor4l0fMbIRZVaZofvmrn17JA=; b=kFqe3RNr0/CVaEGOfN6yOhL5Dd
	olUAwclDM/HezqNs8pox5YJT+AJBKPtcWUlWhCgTGKCQy7T9aLU/ic7CsXO1JRl8+HMO8k5/gDZsP
	pa/dRZqqz11ZRyGfketFbMK24A9N5uyj0MIrRQHt0z1+hlXW1AByFHPplSQ036nJ4t7PRsJmckkao
	jvi8GMUJ/c81MVxrMidELmUQzmCAjnIGO51vJyVNVVpi0x1tJS7vP2gRrMyJL53AcAE0Tf8VUknZ+
	JTB23Rjgkis0sw8DZeXIm13RQb7AiQXhZEITyccgol7bUWhoL0hClKx13oMzrKGQp7EJoOogl1oou
	L0ysWINA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1JFD-0000000DnRn-1oDN;
	Thu, 17 Oct 2024 05:40:19 +0000
Received: from inpost.tmes.trendmicro.com ([18.208.22.110])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1JF8-0000000DnPa-1JX0
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 05:40:18 +0000
Received: from 0.0.0.0_.trendmicro.com (unknown [192.168.171.173])
	by inpost.tmes.trendmicro.com (Postfix) with SMTP id 0EA311000087A
	for <linux-phy@lists.infradead.org>; Thu, 17 Oct 2024 05:40:10 +0000 (UTC)
From: <spamadmin@perkeso.gov.my>
To: <linux-phy@lists.infradead.org>
Subject: =?UTF-8?B?VHJlbmQgTWljcm8gQkVDLCBTUEFNICYgUEhJU0hJTkcg?=
	=?UTF-8?B?REVURUNUSU9O?=
X-TM-MAIL-UUID: 8cdcb299-e8a3-4b80-92fc-e7a921829073
Message-ID: <8cdcb299-e8a3-4b80-92fc-e7a921829073@tmes.trendmicro.com>
X-TM-Deliver-Signature: EA264770F3A65DBDBEF1EFF3AA7D977D
Content-Type: multipart/mixed;
	boundary="TMMSG_C40D6260_C65A_BAEF_B87F_C415F422B1F1"
MIME-Version: 1.0
Date: Thu, 17 Oct 2024 05:40:10 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_224014_442900_0337BE9C 
X-CRM114-Status: UNSURE (  -1.20  )
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
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This is a multi-part message in MIME format.


--TMMSG_C40D6260_C65A_BAEF_B87F_C415F422B1F1
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: base64

QSBtZXNzYWdlIGhhcyBiZWVuIGRldGVjdGVkIEJFQywgU3BhbSAmIFBoaXNoaW5nLiBUaGUgbWVz
c2FnZSBoYXMgYmVlbiBxdWFyYW50aW5lZC4gICAgCk1lc3NhZ2UgZGV0YWlsczogIAoKRG8gbm90
IHJlcGx5IHRvIHRoaXMgZ2VuZXJhdGVkIGVtYWlsIG1lc3NhZ2UuCkZvciBmdXJ0aGVyIGFzc2lz
dGFuY2UsIGNvbnRhY3QgeW91ciBlbWFpbCBhZG1pbmlzdHJhdG9yLgoKVGhlIHByb2JsZW0gcmVw
b3J0IGlzIHByb3ZpZGVkIGJlbG93IGZvciB5b3VyIHJlZmVyZW5jZS4KCgpGcm9tOiBsaW51eC1w
aHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpUbzogZmFyaW5haC5qYXBhckBwZXJrZXNvLmdvdi5teQpT
dWJqZWN0OgpEZWxpdmVyeSBzdGF0dXMgbm90aWZpY2F0aW9uLgpEYXRlOiBUaHUgT2N0IDE3IDA1
OjM5OjEyIDIwMjQKTWVzc2FnZSBJRDogPDY3MTEwNUExLjIwMzAzMDhAbGlzdHMuaW5mcmFkZWFk
Lm9yZz4=

--TMMSG_C40D6260_C65A_BAEF_B87F_C415F422B1F1
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy

--TMMSG_C40D6260_C65A_BAEF_B87F_C415F422B1F1--


