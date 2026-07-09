Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AF70C43458
	for <linux-phy@archiver.kernel.org>; Thu,  9 Jul 2026 19:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kezwvXEVH3RU102aQUNuvwkXthGvI/Q69rxy0N7DyMI=; b=4/m6Eb8CoVsL2h
	83zRZCHHMRHam2RncDuIrbYBbXujQZnwuJeupU7MoFMY1KT1vNfWtdL/vH8imFdfjpJTqeCqsC4vu
	bsGsFrqS7idplHuSX2CUV4YuODM7ENWvp12BqsznLHGG+LMEM42ZvwGi5os+9chEkpsmzM77itDpu
	8SnKH7FkI0mDI+MG1U4wjElikPPhD09k0OKyQyF0WFi1tGhoSxc0mOQB/Mpp+W/XfP4HwwKZ8TuLd
	Vy4Pbk2XAiSOXT7/vqhNI9o1EnzMzKpQvPHKxCqf927g2YjwxzoJhsk4ykPi13uQ1SJFkQnVpS/X9
	FC9SwIo0nNOOb7ekoNXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuH8-00000003RXM-3zyh;
	Thu, 09 Jul 2026 19:19:10 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whuH7-00000003RWx-3fNy
	for linux-phy@lists.infradead.org;
	Thu, 09 Jul 2026 19:19:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 454944367A;
	Thu,  9 Jul 2026 19:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB4CE1F000E9;
	Thu,  9 Jul 2026 19:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783624749;
	bh=D7PyYNnJtBJFBh0HdoUr8sPu42LL28HopR2/MUc47lk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NSC0uzjneYUzz9Lw0cGPalbNWvoYTccngmIBU4+Hou/jEuA7Un10rrVhYJzV8v11q
	 e4jeGRt7hM57+ptkK6MXMXuBL3DFF/kZTyQMQuUVtMOxpLXxXLUTICLixwICIgTbYX
	 W86UUjc7tDL2HcptKOpkxApE4Dj/D2cHAoaKJ6uj2CD57xWVHbogJPU+4kO7oYosAA
	 GG61wLNVoH3axT2cTHn9OpQIDnLxNxBPxElIiwPN5cuN07PmKChrBV0Ol+AVb1ddl0
	 bqyRx5aRKIgGFjL6zTaRP/QVPeO0OVnR1zB25nYgLSc7Hm9HTNSi9xxU+qZonk0SHA
	 RN56im2nKErrQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 10/36] phy: rockchip: usbdp: Add missing mode_change
 update
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: olteanv@gmail.com, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, linux-phy@lists.infradead.org
In-Reply-To: <20260709-rockchip-usbdp-cleanup-v11-10-a149ac60f76c@collabora.com>
References: <20260709-rockchip-usbdp-cleanup-v11-0-a149ac60f76c@collabora.com>
 <20260709-rockchip-usbdp-cleanup-v11-10-a149ac60f76c@collabora.com>
Date: Thu, 09 Jul 2026 19:19:08 +0000
Message-Id: <20260709191908.AB4CE1F000E9@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBuZXdseSBpbnRy
b2R1Y2VkIHJrX3VkcGh5X21vZGVfc2V0KCkgaGVscGVyIGluY29ycmVjdGx5IHJldHVybnMgZWFy
bHkgaWYgdGhlIGxvZ2ljYWwgbW9kZSBtYXRjaGVzLCBmYWlsaW5nIHRvIHRyaWdnZXIgUEhZIGhh
cmR3YXJlIHJlaW5pdGlhbGl6YXRpb24gb24gVHlwZS1DIGNhYmxlIG9yaWVudGF0aW9uIGZsaXBz
LgotLQoKLS0tIFBhdGNoIFsxMF06IFtQQVRDSCB2MTEgMTAvMzZdIHBoeTogcm9ja2NoaXA6IHVz
YmRwOiBBZGQgbWlzc2luZyBtb2RlX2NoYW5nZSB1cGRhdGUgLS0tCmNvbW1pdCAzYTVhOTEwYWM4
ZDdkOGJlZTYyMmE3ZmRhMGI0NDFjMjU0YTg4MmZlCkF1dGhvcjogU2ViYXN0aWFuIFJlaWNoZWwg
PHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpwaHk6IHJvY2tjaGlwOiB1c2JkcDog
QWRkIG1pc3NpbmcgbW9kZV9jaGFuZ2UgdXBkYXRlCgpUaGlzIGNvbW1pdCBpbnRyb2R1Y2VzIGEg
bmV3IGhlbHBlciBya191ZHBoeV9tb2RlX3NldCgpIHRvIHVwZGF0ZSBhdmFpbGFibGUKbW9kZXMg
YW5kIHNldCB0aGUgbW9kZV9jaGFuZ2UgZmxhZy4gSXQgYWltcyB0byBmaXggYW4gaXNzdWUgd2hl
cmUgbWlzc2luZwpyZS1pbml0aWFsaXphdGlvbiBjYXVzZWQgRGlzcGxheVBvcnQgdG8gc3RvcCB3
b3JraW5nLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LXVzYmRwLmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwo+IGlu
ZGV4IDk4MjMxNTUzNWNhZjcuLjc1NDBjODk3ZGRlMTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtdXNiZHAuYwoKWyAuLi4gXQoKPiBAQCAtNjE3LDYgKzYxNywxNSBA
QCBzdGF0aWMgdm9pZCBya191ZHBoeV9kcF9ocGRfZXZlbnRfdHJpZ2dlcihzdHJ1Y3QgcmtfdWRw
aHkgKnVkcGh5LCBib29sIGhwZCkKPiAgCXJrX3VkcGh5X2dyZnJlZ193cml0ZSh1ZHBoeS0+dm9n
cmYsICZjZmctPnZvZ3JmY2ZnW3VkcGh5LT5pZF0uaHBkX3RyaWdnZXIsIGhwZCk7Cj4gIH0KPiAg
Cj4gK3N0YXRpYyB2b2lkIHJrX3VkcGh5X21vZGVfc2V0KHN0cnVjdCBya191ZHBoeSAqdWRwaHks
IHU4IG1vZGUpCj4gK3sKPiArCWlmICh1ZHBoeS0+bW9kZSA9PSBtb2RlKQo+ICsJCXJldHVybjsK
PiArCj4gKwl1ZHBoeS0+bW9kZV9jaGFuZ2UgPSB0cnVlOwo+ICsJdWRwaHktPm1vZGUgPSBtb2Rl
Owo+ICt9Cj4gKwo+ICBzdGF0aWMgdm9pZCBya191ZHBoeV9zZXRfdHlwZWNfZGVmYXVsdF9tYXBw
aW5nKHN0cnVjdCBya191ZHBoeSAqdWRwaHkpCj4gIHsKPiAgCWlmICh1ZHBoeS0+ZmxpcCkgewo+
IEBAIC02NDcsNyArNjU2LDcgQEAgc3RhdGljIHZvaWQgcmtfdWRwaHlfc2V0X3R5cGVjX2RlZmF1
bHRfbWFwcGluZyhzdHJ1Y3QgcmtfdWRwaHkgKnVkcGh5KQo+ICAJCWdwaW9kX3NldF92YWx1ZV9j
YW5zbGVlcCh1ZHBoeS0+c2J1Ml9kY19ncGlvLCAxKTsKPiAgCX0KPiAgCj4gLQl1ZHBoeS0+bW9k
ZSA9IFVEUEhZX01PREVfRFBfVVNCOwo+ICsJcmtfdWRwaHlfbW9kZV9zZXQodWRwaHksIFVEUEhZ
X01PREVfRFBfVVNCKTsKCltTZXZlcml0eTogSGlnaF0KV2lsbCB0aGlzIGVhcmx5IHJldHVybiBp
biBya191ZHBoeV9tb2RlX3NldCgpIHByZXZlbnQgUEhZIHJlLWluaXRpYWxpemF0aW9uCmR1cmlu
ZyBhIFR5cGUtQyBjYWJsZSBvcmllbnRhdGlvbiBmbGlwPwoKV2hlbiB0aGUgY2FibGUgaXMgcmFw
aWRseSBmbGlwcGVkIGFuZCByZXBsdWdnZWQsIHRoZSBVU0IgZHJpdmVyIG1pZ2h0IGtlZXAgdGhl
ClBIWSBwb3dlcmVkIG9uIHRlbXBvcmFyaWx5IGR1ZSB0byBydW50aW1lIFBNIGF1dG9zdXNwZW5k
LCBtZWFuaW5nIHVkcGh5LT5zdGF0dXMKY2FuIHJlbWFpbiBVRFBIWV9NT0RFX1VTQi4gCgpJbiB0
aGlzIHNjZW5hcmlvLCBya191ZHBoeV9zZXRfdHlwZWNfZGVmYXVsdF9tYXBwaW5nKCkgcmVjYWxj
dWxhdGVzIHRoZSBuZXcKcmV2ZXJzZWQgcGh5c2ljYWwgbGFuZSBtYXBwaW5ncyBhbmQgY2FsbHMg
dGhlIG5ldyBoZWxwZXI6Cgpya191ZHBoeV9vcmllbl9zd19zZXQoKSAtPgogICBya191ZHBoeV9z
ZXRfdHlwZWNfZGVmYXVsdF9tYXBwaW5nKCkgLT4KICAgICAgLy8gcGh5c2ljYWwgbGFuZSBtYXBw
aW5ncyBhcmUgdXBkYXRlZCBoZXJlCiAgICAgIHJrX3VkcGh5X21vZGVfc2V0KHVkcGh5LCBVRFBI
WV9NT0RFX0RQX1VTQik7CgpTaW5jZSB1ZHBoeS0+bW9kZSBpcyBhbHJlYWR5IFVEUEhZX01PREVf
RFBfVVNCLCB0aGUgaGVscGVyIHJldHVybnMgZWFybHkKd2l0aG91dCBzZXR0aW5nIG1vZGVfY2hh
bmdlIHRvIHRydWUuIAoKQ29uc2VxdWVudGx5LCB3aGVuIERQIHBvd2VyLW9uIG9jY3VycyBpbiBy
a191ZHBoeV9wb3dlcl9vbigpLCB0aGUgaGFyZHdhcmUKaW5pdGlhbGl6YXRpb24gc3RlcCBpcyBz
a2lwcGVkIGJlY2F1c2UgbW9kZV9jaGFuZ2UgaXMgZmFsc2UuIFRoZSBoYXJkd2FyZSdzCmxhbmUg
bXV4IHJlZ2lzdGVycyBhcmUgbmV2ZXIgdXBkYXRlZCB3aXRoIHRoZSBuZXcgcmV2ZXJzZWQgbWFw
cGluZ3MsIHdoaWNoCmNhdXNlcyBEaXNwbGF5UG9ydCB0byBmYWlsLgoKRG9lcyB0aGUgbW9kZV9j
aGFuZ2UgZmxhZyBuZWVkIHRvIGJlIHNldCBkdXJpbmcgYW4gb3JpZW50YXRpb24gY2hhbmdlIGV2
ZW4gaWYKdGhlIGxvZ2ljYWwgbW9kZSByZW1haW5zIHRoZSBzYW1lPwoKLS0gClNhc2hpa28gQUkg
cmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcwOS1yb2NrY2hp
cC11c2JkcC1jbGVhbnVwLXYxMS0wLWExNDlhYzYwZjc2Y0Bjb2xsYWJvcmEuY29tP3BhcnQ9MTAK
Ci0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
