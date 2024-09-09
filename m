Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9BDCECE579
	for <linux-phy@archiver.kernel.org>; Mon,  9 Sep 2024 12:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RY+uJi3jjyyMjVXCPG3pT7C4sJcnkGAjxY3JHmc2H8A=; b=QKZbRowWfHi0di
	ecAoOZW4z2TXBWWcDOSLSVyFPbP3XprQ1uTnTjnSFX2jYulA95e04mrGCT9uJtjrlL234VdM1sMDB
	5TtiBPiq7HYXYjueRYaGHFS42DEbX4maA1JyIoWi5+HzJGLsEUu/IrK7Ql8F0DHbKjCe3pKruIeBZ
	mf8uB6NDFiH7X6JLMcxugf/KbyCoq9ASERLH5ykS4gFyK2QkY1nyHvLpfBJFeV8kRrfnByqcyAH9x
	XAwfqORNMaFsqXRNJQyZQklJ4FEyz1UtpHuocqnhqxxBaRe+dnvdKuHBW9b7j90N9aSMVa7gcGyeV
	GSYYJFcIKLP3F6y9gMgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sndoE-00000001usM-0Wey;
	Mon, 09 Sep 2024 12:47:58 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sndnC-00000001twx-1ley
	for linux-phy@lists.infradead.org;
	Mon, 09 Sep 2024 12:46:58 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-2daaa9706a9so3300699a91.1
        for <linux-phy@lists.infradead.org>; Mon, 09 Sep 2024 05:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725886012; x=1726490812; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CmsSXtXoT0LjaKLXoUsKwFJIQHJ/ks4Ou/9C9lMCcY0=;
        b=jl1TvyKTDPOsg7SitClcEGktW80fK7WnTKC2+q2mp69flpzCcpuYazCW2mFXFg/YXs
         ACrOc4wweGJscZ1gYNYmCl7OCa9OCHvHXXAfMVAsxPYq9BTr8CL/wLfDYqTd7ufQE/HJ
         MeqOvvyOmgoYrmvJuyK6g65MMx6iKyxz53G/NVJX9CaHOpKXqlLx4vkX9P7/bO5fGU3h
         jAPsE8q1notWCJNeq7eA2k0nWjIlA5eTmM1V8zwsVg1D/qgUAbQ4DLCRCKcsPPE21tTT
         jsXvaF0GlKfTrWcyR+uw7QdH2kIiN7MKUqrxG74XrehjrquMVlR+SPVU/kY1uWayKebE
         Pvkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725886012; x=1726490812;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CmsSXtXoT0LjaKLXoUsKwFJIQHJ/ks4Ou/9C9lMCcY0=;
        b=Cvd+/6MxfKhZjKtdeqxVsKrtbZ5Yc4UWw1t0wtCx9xkd0yheRLBU0TNXhCa7+8i9S2
         Ohu4eazpJtleoPToYwvHsE6ke+88XX4AjIpY2qApBCGy2yHqOUBE5mtinSC3zow/QkRh
         I/hw1ESmSyNdN5iuQi9fJZM/w7R//0O79351tRxCA8xrizAfYLN4KHt021t+O+z05qUo
         RDIHfqksKV9d26QBiCVuCsdboQf1pKVFFDdoXkqrwTHDlvTC4BwNFNlGoMPSGxmW8VUt
         TRJCFmilyxPWyyozxBRCMPBuWbVJ1kHyxSl4HqgvjFX5r+pprhbQJe1krzfwcA830t/q
         HE3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWHokJbh1EKcpFFVehAXVc3VTwz2K7qh1W9I3jJGq65FFVRlYqnl5s2LkPWt4ig9YecTk6KCyc1ldI=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxc76i/80TVJj0kZNjtc7rXKNYawHJZkjkoY1sCorfPjivm1cMK
	U1kZZERbFEF1+CD956G1O8DQMFTrBcrqz+B9g39dGsr3B5RAWDCj6LWztICA1Vr+YAiGao1RQ3n
	aJRhHaVgUwZ30IEzflLANgTebGpw=
X-Google-Smtp-Source: AGHT+IEnYPHu+DclcXKCQRMpkx1L5NfLXxIStiOuqt20xBcgi2mEQBkdbBME1/YQ3ICjAFgL7tzuyJS3kLgZXx9qWks=
X-Received: by 2002:a17:90b:32c9:b0:2d8:840b:9654 with SMTP id
 98e67ed59e1d1-2dad511829amr9609405a91.34.1725886012395; Mon, 09 Sep 2024
 05:46:52 -0700 (PDT)
MIME-Version: 1.0
References: <20240904233100.114611-1-aford173@gmail.com> <20240904233100.114611-5-aford173@gmail.com>
 <ZtpMPCHBnEgtkBWp@atmark-techno.com> <CAHCN7xLo1RgkUPTdTpCtKjnT7w=gPDCfe_ZEbKj0joVvLG02Dw@mail.gmail.com>
 <ada922ea-b307-4ccf-9e2d-9a2a08fb97c1@fris.de> <Ztvbd4XqY95YMAZd@atmark-techno.com>
In-Reply-To: <Ztvbd4XqY95YMAZd@atmark-techno.com>
From: Adam Ford <aford173@gmail.com>
Date: Mon, 9 Sep 2024 07:46:41 -0500
Message-ID: <CAHCN7xLvFkcFhE51fGXumoin4FWON2ZQ7duXJX40kkqK_ugXgw@mail.gmail.com>
Subject: Re: [PATCH V6 4/5] phy: freescale: fsl-samsung-hdmi: Use closest divider
To: Dominique Martinet <dominique.martinet@atmark-techno.com>
Cc: Frieder Schrempf <frieder@fris.de>, linux-phy@lists.infradead.org, linux-imx@nxp.com, 
	festevam@gmail.com, frieder.schrempf@kontron.de, aford@beaconembedded.com, 
	Sandor.yu@nxp.com, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Marco Felsch <m.felsch@pengutronix.de>, 
	Lucas Stach <l.stach@pengutronix.de>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_054654_842760_9442F02B 
X-CRM114-Status: GOOD (  32.41  )
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

T24gRnJpLCBTZXAgNiwgMjAyNCBhdCAxMTo1MOKAr1BNIERvbWluaXF1ZSBNYXJ0aW5ldAo8ZG9t
aW5pcXVlLm1hcnRpbmV0QGF0bWFyay10ZWNobm8uY29tPiB3cm90ZToKPgo+IEZyaWVkZXIgU2No
cmVtcGYgd3JvdGUgb24gRnJpLCBTZXAgMDYsIDIwMjQgYXQgMTA6Mjg6NTlQTSArMDIwMDoKPiA+
IEkgdGhpbmsgSSBtYW5hZ2VkIHRvIGdldCBiZWhpbmQgdGhlIGNhbGN1bGF0aW9uIG9mIHRoZSBm
cmFjdGlvbmFsLW4gZGl2aWRlcgo+ID4gcGFyYW1ldGVycy4gSSBjYW1lIHVwIHdpdGggYSBzcHJl
YWRzaGVldCB0byBjYWxjdWxhdGUgdGhlIG91dHB1dCBmcmVxdWVuY3kKPiA+IGZyb20gZXhpc3Rp
bmcgcmVnaXN0ZXIgdmFsdWVzIGFuZCBJIGhhdmUgYSBjcnVkZSBQeXRob24gc2NyaXB0IHRoYXQg
Y2FuIGJlCj4gPiB1c2VkIHRvIHNlYXJjaCBmb3IgcGFyYW1ldGVycyBmb3IgYSBnaXZlbiBwaXhl
bCBjbG9jay4KPiA+Cj4gPiBJIHRlc3RlZCB0aGlzIHdpdGggdGhyZWUgZGlmZmVyZW50IG5vbi1D
RUEtODYxIHBpeGVsIGNsb2NrIHZhbHVlcyAoc3VwcG9ydGVkCj4gPiBieSBteSBIRE1JIFVTQiBn
cmFiYmVyKSBmb3Igd2hpY2ggdGhlIGludGVnZXIgUExMIHlpZWxkZWQgZGV2aWF0aW9ucyA+MC41
JS4KPiA+IFdpdGggdGhlIG5ldyBMVVQgZW50cmllcyB0aG9zZSBtb2RlcyB3b3JrIG5vdy4KPiA+
Cj4gPiBJIHdpbGwgY2xlYW4gdGhpbmdzIHVwIGEgYml0IGFuZCB0aGVuIHNoYXJlIHdoYXQgSSBo
YXZlLiBJIGhvcGUgdGhhdCB0aGlzCj4gPiBhbGxvd3MgYW55b25lIHRvIGNhbGN1bGF0ZSBwYXJh
bWV0ZXJzIGZvciB0aGVpciBub24tc3RhbmRhcmQgZGlzcGxheXMgaWYKPiA+IHJlcXVpcmVkLgo+
ID4KPiA+IElmIHNvbWVvbmUgZmVlbHMgZXh0cmEgbW90aXZhdGVkIHRoZXkgY291bGQgdHJ5IHRv
IGNhbGN1bGF0ZSB0aGUgZnJhY3Rpb25hbAo+ID4gcGFyYW1ldGVycyBhdCBydW50aW1lLiBIb3dl
dmVyIEknbSBub3Qgc3VyZSB0aGF0IHRoaXMgaXMgZmVhc2libGUuIFRoZQo+ID4gbnVtZXJpY2Fs
IGNvbXB1dGF0aW9uIG9mIGEgbGFyZ2UgbnVtYmVyIG9mIHBhcmFtZXRlcnMgaXMgcXVpdGUgaGVh
dnkgYW5kCj4gPiBpdCdzIHByb2JhYmx5IG5vdCBlYXN5IHRvIHN0cmlwIHRoZSBhbGdvcml0aG0g
ZG93biB0byBzb21ldGhpbmcgdGhhdCBjYW4gYmUKPiA+IHJ1biBvbiB0aGUgdGFyZ2V0IHdpdGhv
dXQgdG9vIG11Y2ggb3ZlcmhlYWQuCj4KPiBJIHRoaW5rIGtlZXBpbmcgdGhlIExVVCBpcyBwZXJm
ZWN0bHkgZmluZSBpZiB3ZSBrbm93IHdoZXJlIHRoZSB2YWx1ZXMKPiBjb21lIGZyb20gLSBwZXJo
YXBzIGhhdmluZyB5b3VyIHB5dGhvbiBwcm9ncmFtIGluIGEgY29tbWVudCBhYm92ZSB0aGUKPiBM
VVQgc28gYW55b25lIGNhbiBjaGVjayB0aGUgdmFsdWVzIG1hdGNoPwo+Cj4gTXkgbWFpbiBwcm9i
bGVtIHdpdGggdGhlIExVVCBpcyBqdXN0IHRoYXQgLS0gdGhlcmUncyBubyB3YXkgb2YKPiBjaGVj
a2luZy4gSWYgdGhlIHZhbHVlcyBjb21lIGZyb20gc29tZXdoZXJlIHNlbnNpYmxlIGFuZCBjYW4g
YmUgdmVyaWZpZWQKPiBJIHRoaW5rIGl0IG1ha2VzIHNlbnNlIHRvIGtlZXAgaXQgdG8gZmlsbCB0
aGUgaG9sZXMgd2hlcmUgdGhlIGludGVnZXIKPiBkaXZpZGVyIGlzbid0IGVub3VnaC4KPgo+ID4g
PiBUaGlzIHdheSwgdGhlIGNhbGxpbmcgZnVuY3Rpb24gY2FuIGRldGVybWluZSBpZiBpdCBuZWVk
cyB0byBiZQo+ID4gPiBtdWx0aXBsaWVkIGJ5IDUuICBJIGhhdmVuJ3QgZnVsbHkgZGV0ZXJtaW5l
ZCBob3cgdGhlIGZyYWN0aW9uYWwKPiA+ID4gY2FsY3VsYXRvciBkZXRlcm1pbmVzIHdoYXQgZnJl
cXVlbmN5IGl0IHdhbnRzIGZvciBhIHRhcmdldCBmcmVxdWVuY3ksCj4gPiA+IGFuZCB1c2luZyB0
aGUgdmFsdWVzIGZvciBQLCBNIGFuZCBTIGZyb20gdGhlIGZyYWN0aW9uYWwgZGl2aWRlcgo+ID4g
PiBkb2Vzbid0IHNlZW0gdG8gYWx3YXlzIHlpZWxkIDV4IGxpa2UgdGhleSBkaWQgZm9yIHRoZSB0
YWJsZSBlbnRyaWVzCj4gPiA+IHVzaW5nIHRoZSBpbnRlZ2VyIGRpdmlkZXIuCj4gPgo+ID4gRm9y
IHdoYXQgSSBmb3VuZCBvdXQgdGhlIGZhY3RvciBvZiA1IGFsd2F5cyBhcHBsaWVzLiBGb3IgdGhl
IGludGVnZXIgcGFydAo+ID4gYW5kIGFsc28gZm9yIHRoZSBmcmFjdGlvbmFsIHBhcnQuCj4KPiBJ
biB0aGF0IGNhc2UgSSdtIGRlZmluaXRlbHkgaW4gZmF2b3Igb2YgbW92aW5nIGl0IGluc2lkZSB0
aGUgZnVuY3Rpb24gYXMKPiBwYXJ0IG9mIHRoZSBjYWxjdWxhdGlvbgoKSSdsbCBkbyBhIFY3IHdp
dGggdGhlIDV4IGZhY3RvciBtb3ZlZCBpbnRvIHRoZSBpbnRlZ2VyIGNhbGN1bGF0b3IuCkknbGwg
YWxzbyB0cnkgdG8gcmVhcnJhbmdlIHRoZSBmbG93IGEgYml0IGFzIHlvdSByZXF1ZXN0ZWQuICBE
ZXBlbmRpbmcKb24gaG93IG11Y2ggY2hhbmdlcywgSSBtYXkgc3RyaXAgb2ZmIGFueSBzLW8tYiBu
b3Rlcy4KSSB3YXMgdHJhdmVsaW5nIG92ZXIgdGhlIHdlZWtlbmQgYW5kIEknbSBsaWtlbHkgdHJh
dmVsaW5nIHRoZSBuZXh0CndlZWtlbmRzLCBzbyBJIHdpbGwgdHJ5IHRvIGdldCB0byBpdCB0aGlz
IHdlZWsgYmVmb3JlIEkgZ28sIGJ1dCBJCmNhbid0IHByb21pc2UgYW55dGhpbmcgcXVpY2tseS4K
CmFkYW0KCj4KPiBUaGFuayB5b3UgYm90aCEKPiAtLQo+IERvbWluaXF1ZQoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
