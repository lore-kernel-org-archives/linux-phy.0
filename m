Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABC91CFB440
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 05:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6U9mOuUZk9eU6pw8Rolj2/gkPaqnOd9ECGIh0LbGLC0=; b=JY+fDLrJWOC0U0
	dvI49zc4QTHf3om17JavcGxN1RjfS3y3vmkMFmRPoW1wejBKf4t7a/s4fdvKtnb0pAbc8AxQsANAl
	EbwrZTDDumn3TNylvJUvhqeVscIwwdlFyqvdZcjIwD6GBybiQjz8EBU5+cSeZpPomtUTHI3quSM//
	izkFVTcvjJIDR8MzN0m29z8NllLVNqT/bbuderzDdQDu1q8OoXCqf5HJ6GrRoPH5f8mvvlOLztdBU
	Bm5gaqPIN3OvJhq5Dyy+VLZ7G76MzGOKBMF6KXDzih44O7x+rQ4P8k8Z8Tx0J/CxFnKY3sHPzxTQ7
	qA5mblfT/N7clvdKYGNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxgWb-00000001KX9-1jUY;
	Mon, 07 Oct 2024 05:43:17 +0000
Received: from mout.gmx.net ([212.227.15.19])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxgWY-00000001KW3-0Wxo
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 05:43:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1728279770; x=1728884570;
	i=markus.stockhausen@gmx.de;
	bh=9SWJgHGbgBL2YNH8hSZKg04FgJym+zimH9H+OSxKU+w=;
	h=X-UI-Sender-Class:From:To:References:In-Reply-To:Subject:Date:
	 Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=PqarHKkkKiAM/PLJZjdtxE3jfEMO1AvHND9e5M6wnyHDsiouJLUhk11PngxPQfLD
	 4hcaHzlp0JTRwRux/2t+9j2tyPNng2c3UDgBUMpRvephTWmGaaVzdNC7DXn3ZSbRs
	 kqjitkLQEbfWyRO+qo4J8kkIIbRyCgOYN81o+yNy3HYOnPZa9lpZdl5Ykzd72TtvB
	 aLGHJ+y93r5n09VETg4HEn3bBaM57Vt229x1V68ZvnbElxYPwRioUyLk8V1DkRLuk
	 6OtMKVkDHb4NNPMv+JIVkBBsTkq0dIwr8aFwPM0Z7IQKMbLrQJTFSCycb1g5y1YKG
	 6ILi2vsZvz3QmpIuRw==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from colnote55 ([94.31.70.45]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MsHns-1tqD4q0SxG-00sLm3; Mon, 07
 Oct 2024 07:42:50 +0200
From: <markus.stockhausen@gmx.de>
To: "'Chris Packham'" <chris.packham@alliedtelesis.co.nz>,
	<linux-phy@lists.infradead.org>
References: <20241004195712.1891488-1-markus.stockhausen@gmx.de> <20241004195712.1891488-3-markus.stockhausen@gmx.de> <a1f37283-6701-466b-b835-a277e08e141f@alliedtelesis.co.nz>
In-Reply-To: <a1f37283-6701-466b-b835-a277e08e141f@alliedtelesis.co.nz>
Subject: AW: [PATCH 2/4] phy: Realtek Otto SerDes: add driver source
Date: Mon, 7 Oct 2024 07:42:49 +0200
Message-ID: <003601db187b$bef20e20$3cd62a60$@gmx.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: de
Thread-Index: AQGjUp1rNFBzrocwxb0ebYifbzW8CQHE5iH1AT60fjuy0jPgAA==
X-Provags-ID: V03:K1:iEa6R73GG1ld7/b6/N+krjEJzI4H5bGUNUZbbnu3pbS9tewjy7b
 4UZGOzJ9H7xSNCtyA4z5S8IaRCoU1oBZ3N6iEcLKeMzf9qov1qUa6vXHGtr49eOgGngl3bS
 pXxMgD//TnKMlQRPdr/qoXwKrucUt6zrckElPKKAGyQ3zO8bgx2xMSLEBKXOLXtqTbRJFOf
 jt/MrG+pcaE1m4QGyvyPA==
UI-OutboundReport: notjunk:1;M01:P0:AG1IiBmtwlQ=;P6D4ySmm8VJ9gRfeOzu/RNVeWye
 lkVJAM7TFR0zyHedRShghc93O/ViJiy/z/o5ti0ebiOqT+lxBAmbv3C70+NFWqC9TptesyXPm
 ybheOOkXCmYyo/nXoVyRGDk/56BgWas4MUF9aijw8ssr5H6zCLxlJNCfmcDCoAWr58WyHTZo3
 Dn/lUpbFJPCRY7mbDvccyTzemyGk8TdFmzU/EAnL6W13jwu9Pol6dsdUpLS0yr/YurLETqv1G
 Q+ydANGKpq4n7ioYkv+jYRSalbFpebv79cQat2vuXP2qpnsZ9PvfOhCJrgtXdFo/Vk+JJ4/EC
 gTpzcLD1Oay4DfDdh7F6C0hNPl5MMjBv4/5gXAzKXBqhs3DERtO5reoVMsC2onVi3ehjbeA+c
 arckjgN5rqme/XkXIVXNw92qRF8MCOSkvxIpBdIG6FI3MAabSJnrYn1El6r0Kaki4DyWu7QlQ
 PeDAlJjq86ROFNDfG8PchCKDNexaSJRBJW7/k1ulBkjHQZpR6Em0vwpBY97wUyqTS6A1PEgAu
 gJBHgbpm/xzJ+0coCdz3QknjbrQeuLoqFZo5cUCF3DAN14wDdzHquRUE2rJT8YoSRoTbtQicd
 2//s/N4NiRkG7TKswN25xvqxCV3rZ7V/JVIGPDeHXTwBelTyxSrlP1GSDE6cEd2jXRGmfegOv
 CyyQKaN3B0Rd6iWkd0jV7S3bbhmSVQ7iEWRhjO9iTI1jhBDIC9rFMkOP+oLXbDILvj3vTDFvI
 8oBpId3x4KJDq57qL6hyjibjOIgN+ga/uPgHjrXQAMZQtajVseUj4usR0G6LYIxZx1tH4BoxW
 l0D64FZyRQgVvh+H5BgxdMRQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_224314_556337_1650B29E 
X-CRM114-Status: UNSURE (   8.04  )
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

PiAtLS0tLVVyc3Byw7xuZ2xpY2hlIE5hY2hyaWNodC0tLS0tCj4gVm9uOiBDaHJpcyBQYWNraGFt
IDxjaHJpcy5wYWNraGFtQGFsbGllZHRlbGVzaXMuY28ubno+IAo+IEdlc2VuZGV0OiBTb25udGFn
LCA2LiBPa3RvYmVyIDIwMjQgMjM6MzMKPiBBbjogTWFya3VzIFN0b2NraGF1c2VuIDxtYXJrdXMu
c3RvY2toYXVzZW5AZ214LmRlPjsgbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKPiBCZXRy
ZWZmOiBSZTogW1BBVENIIDIvNF0gcGh5OiBSZWFsdGVrIE90dG8gU2VyRGVzOiBhZGQgZHJpdmVy
IHNvdXJjZQo+Cj4gPiAuLi4KPiA+ICsKPiA+ICsKPiA+ICsJcmV0ID0gb2ZfcHJvcGVydHlfcmVh
ZF91MzIobnAsICJjb250cm9sbGVkLXBvcnRzIiwgJmN0cmwtPnNkc19tYXNrKTsKPiA+ICsJaWYg
KHJldCkgewo+ID4gKwkJY3RybC0+c2RzX21hc2sgPSAwOwo+ID4gKwkJZGV2X3dhcm4oZGV2LCAi
cHJvcGVydHkgY29udHJvbGxlZC1wb3J0cyBub3QgZm91bmQsIHN3aXRjaGVkIHRvIHJlYWQtb25s
eSBtb2RlXG4iKTsKPiA+ICsJfQo+IERvZXMgdGhpcyBsZXQgdXMgc2F5ICJ1c2Ugd2hhdGV2ZXIg
dGhlIGVhcmxpZXIgc3RhZ2VzIGhhdmUgc2V0dXAiLiAKPiBUaGF0J2QgYmUgaGFuZHkgZm9yIG1l
IGFzIEknbSBjdXJyZW50bHkgcmVseWluZyBvbiB0aGUgdmVuZG9yIFUtQm9vdCB0byAKPiBkbyB0
aGUgU0VSREVTIGluaXQgZm9yIG1lLgoKU28gaXQgaXMuIFRoaXMgaGVscHMgbWUgdG8gY29tcGFy
ZSBhIHNlbGYgaW5pdGlhbGl6ZWQgU2VyRGVzIHdpdGggYSBVLUJvb3QgaW5pdGlhbGl6ZWQgb25l
LgoKTWFya3VzCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
