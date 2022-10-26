Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2F09FA373E
	for <linux-phy@archiver.kernel.org>; Wed, 26 Oct 2022 14:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBhW91tOpniMvDAlFU0Iw06jEyW1eOZzvIonKIM+a/E=; b=mZkBSJ0JZoxB49
	VT5Pi/H5ZNnGFHxtPLHrJ6ADugnOjCLAfcOSRR5H55XdYkfOxP9meX4MnZwDpnIteUmZiFyKOrGxB
	3fC2eVUZG+VRbvJY8WkWVh7SSFaxi086I27s9q0+7uuOLtJYkytqVNe7Kd7DgZ3v8z9/U638N/pIm
	7Bv0K3kgSSl0yCyDI/sPl14D1YrCL0kSwAL+kBl3SBFKH0bl6ir1HcVUVuI4hrk1ETyByZvH1vxxt
	Zh0wCAujD/a2RCFaRw/Xksjbk2EluTZ0ewqJ93h8WmKd+xLyyHq44G28oOH6Va5XnwB6nCghxNyqj
	Th1yK8CTwYI3IhGKqQzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onhRs-009gst-BM; Wed, 26 Oct 2022 14:32:04 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1onhRp-009gs8-F9
	for linux-phy@lists.infradead.org; Wed, 26 Oct 2022 14:32:03 +0000
Received: by mail-pf1-x443.google.com with SMTP id d10so15449288pfh.6
        for <linux-phy@lists.infradead.org>; Wed, 26 Oct 2022 07:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ntZLp7OVSmLd/Z9tfPE0dtDYBArbeZCUDytlptrIcAY=;
        b=ukHhbkDC6DOXtfdPDryQPu2tSw0ZRs83cKVWZ1T5QXY6hOWZuIKG4tFEDhnrEGIqr6
         b8brR1LtEL7CGvOv9VhxOKoEhJTNtJyPa+xHn2D7YouuG6DMAqhZ4pkm64MhuXtRuUgX
         e8vttbocs3MMmD/la2C5Wopob4hq4+kHWAfPImoyEIUM59ikC3qv7b1ZktG2xI+k8IfN
         8hw8AKxpHRsrMic7J92rzkeWFjlHeY3pBgZh1eM1+WikcwbbQyEZXez5YJqSpX2GnXzN
         j7Naa5ijVBqHfsib2FatH1Lj9MBrnQKY86pV6xaDtF7G7wWBwGbhTswoWIezU3TmLtr9
         101w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ntZLp7OVSmLd/Z9tfPE0dtDYBArbeZCUDytlptrIcAY=;
        b=TAUBTwG7aILm2yB8kYPjle1sqRR55tOyW4y3QEED67TdDp+xMN//KXZ8lKlb6v80Xf
         8rxUX/Rxw7dcNCvDgK8P1OhGWwfb40JeahhD1Nz0tsyhJ5Fsr2M7aa+06A0RgQebqVIA
         xSyvIRQpwvtiBHu7jL5ZP7KWUu67iqoeq0U/HzEe6IDvClIFImnOGHIu5UxLIMHYs84s
         nqoHtbM6OMcPsLAgbkfDTZOTtB2aCKvjl69c3ObPGPmJzbXs5ZEHGAk7zTUNQIdML2wp
         dwD76GawgMjAUMJqxGj4OUG+qfmT3ylRa8sevwIoFD5oRU8CAA+1h9OHoknN6DvrMtUc
         AvAA==
X-Gm-Message-State: ACrzQf2SzxkbpgdvunkuDKwXQm5fuvwNNuMoMwQ4p8Z7qN4N1JVi/BAG
	VwEs1LhxtdaqwiXTj7UjuG2p
X-Google-Smtp-Source: AMsMyM6SeK6JRTsCgrvuTLYxTBm7A+1WSmXUpZygONc4JZRDonnJRjpbmV0zfxWnha7urSXsWyrXFQ==
X-Received: by 2002:a63:5410:0:b0:46f:2a22:13ea with SMTP id i16-20020a635410000000b0046f2a2213eamr8947593pgb.487.1666794719788;
        Wed, 26 Oct 2022 07:31:59 -0700 (PDT)
Received: from thinkpad ([117.193.208.123])
        by smtp.gmail.com with ESMTPSA id ij28-20020a170902ab5c00b0017f9147983asm2982657plb.175.2022.10.26.07.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 07:31:58 -0700 (PDT)
Date: Wed, 26 Oct 2022 20:01:52 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: vkoul@kernel.org, andersson@kernel.org, kishon@ti.com,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-pcie: Fix the SM8450 PCS registers
Message-ID: <20221026143152.GA93939@thinkpad>
References: <20220910063857.17372-1-manivannan.sadhasivam@linaro.org>
 <f6ab7125-4f1a-61fc-cfeb-8988921c35b4@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f6ab7125-4f1a-61fc-cfeb-8988921c35b4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221026_073201_529930_3E85090E 
X-CRM114-Status: GOOD (  22.12  )
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

T24gV2VkLCBTZXAgMjEsIDIwMjIgYXQgMDQ6MDY6MTBQTSArMDMwMCwgRG1pdHJ5IEJhcnlzaGtv
diB3cm90ZToKPiBPbiAxMC8wOS8yMDIyIDA5OjM4LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3Jv
dGU6Cj4gPiBJbiB0aGUgUENTIHJlZ2lvbiwgcmVnaXN0ZXJzIFFQSFlfVjVfUENTX0VRX0NPTkZJ
RzQgYW5kCj4gPiBRUEhZX1Y1X1BDU19FUV9DT05GSUc1IHNob3VsZCBiZSB1c2VkIGluc3RlYWQg
b2YgUVBIWV9WNV9QQ1NfRVFfQ09ORklHMgo+ID4gYW5kIFFQSFlfVjVfUENTX0VRX0NPTkZJRzMu
Cj4gPiAKPiA+IFRoaXMgY2F1c2VzIGhpZ2ggbGF0ZW5jeSB3aGVuIEFTUE0gaXMgZW5hYmxlZCwg
c28gZml4IGl0IQo+IAo+IEkgaGF2ZSBjaGVja2VkIGFnYWluc3QgdmVuZG9yJ3MgdHJlZSBbMV0u
IFRoZSByZWdpc3RlcnMgaW4gcXVlc3Rpb24gaGF2ZQo+IG9mZnNldHMgMHgwMWMwZjNlMCAvIDB4
MDFjMGYzZTQuIFRoZSBzbTg0NTAuZHRzaSB1c2VzIDB4MWMwZjIwMCBhcyB0aGUgUENTCj4gcmVn
aW9uIGJhc2UgZm9yIHRoZSBQQ0llIFBIWTEuIFRodXMgdGhlIGNvcnJlY3Qgb2Zmc2V0cyBmb3Ig
dGhlIHRhYmxlIGFyZQo+IDB4MWUwLzB4MWU0Lgo+IAo+IFRoZXJlIG1pZ2h0IGJlIGEgbWlzdGFr
ZSBpbiB0aGUgbmFtZSBvZiB0aGUgcmVnaXN0ZXIsIGJ1dCB0aGUgYWRkcmVzcwo+IGNvcnJlc3Bv
bmRzIHRvIHRoZSBhZGRyZXNzIGluIHRoZSB2ZW5kb3IncyB0cmVlLgo+IAoKUmlnaHQuIE9ubHkg
dGhlIHJlZ2lzdGVyIG5hbWUgaXMgd3JvbmcgYW5kIEkndmUgZ290IHRoZSBvZmZzZXQgd3Jvbmcg
aGVyZS4KQnV0IHRoZSBhY3R1YWwgbGF0ZW5jeSBpc3N1ZSBpcyBmaXhlZCBieSBjbGVhcmluZyB0
aGUKUVBIWV9WNF9QQ1NfUENJRV9QUkVTRVRfUDEwX1BPU1QgcmVnaXN0ZXIgaW4gcGNzX21pc2Mg
cmVnaXN0ZXIgc3BhY2UuCgpJIHdpbGwgY2hlY2sgd2l0aCBRY29tIG9uIHRoaXMgYmVoYXZpb3Vy
IGFuZCBwb3N0IHYyIHdpdGggcmVnaXN0ZXIgbmFtZSBmaXguCgpUaGFua3MsCk1hbmkKCj4gWzFd
IGh0dHBzOi8vZ2l0aHViLmNvbS9NaUNvZGUva2VybmVsX2RldmljZXRyZWUvYmxvYi96ZXVzLXMt
b3NzL3Fjb20vd2FpcGlvLXBjaWUuZHRzaSNMNTIwCj4gCj4gPiAKPiA+IEZpeGVzOiAyYzkxYmY2
YmYyOTAgKCJwaHk6IHFjb20tcW1wOiBBZGQgU004NDUwIFBDSWUxIFBIWSBzdXBwb3J0IikKPiA+
IFNpZ25lZC1vZmYtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNp
dmFtQGxpbmFyby5vcmc+Cj4gPiAtLS0KPiA+ICAgZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFj
b20tcW1wLXBjaWUuYyAgIHwgNCArKy0tCj4gPiAgIGRyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1x
Y29tLXFtcC1wY3MtdjUuaCB8IDQgKystLQo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0
aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHkt
cWNvbS1xbXAtcGNpZS5jCj4gPiBpbmRleCA0NjQ4NDY3ZDVjYWMuLmI1MDg5MDNkNzdkMCAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPiA+
ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2llLmMKPiA+IEBAIC0x
MzMyLDggKzEzMzIsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90Ymwgc204
NDUwX3FtcF9nZW40eDJfcGNpZV9yeF90YmxbXSA9IHsKPiA+ICAgfTsKPiA+ICAgc3RhdGljIGNv
bnN0IHN0cnVjdCBxbXBfcGh5X2luaXRfdGJsIHNtODQ1MF9xbXBfZ2VuNHgyX3BjaWVfcGNzX3Ri
bFtdID0gewo+ID4gLQlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjVfUENTX0VRX0NPTkZJRzIsIDB4
MTYpLAo+ID4gLQlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjVfUENTX0VRX0NPTkZJRzMsIDB4MjIp
LAo+ID4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjVfUENTX0VRX0NPTkZJRzQsIDB4MTYpLAo+
ID4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjVfUENTX0VRX0NPTkZJRzUsIDB4MjIpLAo+ID4g
ICAJUU1QX1BIWV9JTklUX0NGRyhRUEhZX1Y1X1BDU19HM1MyX1BSRV9HQUlOLCAweDJlKSwKPiA+
ICAgCVFNUF9QSFlfSU5JVF9DRkcoUVBIWV9WNV9QQ1NfUlhfU0lHREVUX0xWTCwgMHg5OSksCj4g
PiAgIH07Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1w
LXBjcy12NS5oIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy12NS5oCj4g
PiBpbmRleCA2MWE0NDUxOWY5NjkuLmNjYTY0NTVlYzk4YyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZl
cnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY3MtdjUuaAo+ID4gKysrIGIvZHJpdmVycy9w
aHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjcy12NS5oCj4gPiBAQCAtMTEsNyArMTEsNyBAQAo+
ID4gICAjZGVmaW5lIFFQSFlfVjVfUENTX0czUzJfUFJFX0dBSU4JCQkweDE3MAo+ID4gICAjZGVm
aW5lIFFQSFlfVjVfUENTX1JYX1NJR0RFVF9MVkwJCQkweDE4OAo+ID4gICAjZGVmaW5lIFFQSFlf
VjVfUENTX1JBVEVfU0xFV19DTlRSTDEJCQkweDE5OAo+ID4gLSNkZWZpbmUgUVBIWV9WNV9QQ1Nf
RVFfQ09ORklHMgkJCQkweDFlMAo+ID4gLSNkZWZpbmUgUVBIWV9WNV9QQ1NfRVFfQ09ORklHMwkJ
CQkweDFlNAo+ID4gKyNkZWZpbmUgUVBIWV9WNV9QQ1NfRVFfQ09ORklHNAkJCQkweDJlMAo+ID4g
KyNkZWZpbmUgUVBIWV9WNV9QQ1NfRVFfQ09ORklHNQkJCQkweDJlNAo+ID4gICAjZW5kaWYKPiAK
PiAtLSAKPiBXaXRoIGJlc3Qgd2lzaGVzCj4gRG1pdHJ5Cj4gCgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWls
aW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
