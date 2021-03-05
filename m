Return-Path: <SRS0=UbcY=ID=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D485C433E0
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 21:51:05 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BB073650A9
	for <linux-phy@archiver.kernel.org>; Fri,  5 Mar 2021 21:51:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BB073650A9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QuEYD9c4bwSzj4VtZNl4KwP/jwsgdCX3XsZIP55Mcgo=; b=TLugwwM6dPme8JMDndW+UFIGs
	8xnfMJ+u00sSuwr6rI8I1SyLQtGKvUpn3nkQ3XK4Y9VkG+qMAeYyt+Hg5iAg9nJ+FOFIZ8pa2RBVi
	fvQbxYJEtRrIxqJMXZIRCVXOj+b9t98WNYm+y1ROtgPr0B0NcyJ43fvsFSJ9dAhuef/ayp1il9fuI
	k+4hnY0lDjecl6GenmK97VOe9V6UF8iHSswBwcNUTLPzXFBD/bX+/Ze6ZUJ76xHpFtwrDyky/wSyn
	zr4xmSpcpa/qFpzqeICWiS0Bs25hMBw1whjsCSYKSF7vmaKIRsuMh/GfanCmA6qNXAFin3/2S1oI3
	3bN8MjpIw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIILd-00GgnK-JB; Fri, 05 Mar 2021 21:51:02 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIILZ-00Gglw-8V
 for linux-phy@lists.infradead.org; Fri, 05 Mar 2021 21:50:59 +0000
Received: by mail-lf1-x135.google.com with SMTP id m22so6096694lfg.5
 for <linux-phy@lists.infradead.org>; Fri, 05 Mar 2021 13:50:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=/NFlc8/2M/Pmm6oLgkw8VYwZK7FquOGJoZ7lGyC1UMY=;
 b=jj1EUJo2oT1asageCMml/fbLjInZ6rXRjKa69vXHraNGp+4PE1zJZ96QqLGqCZmyj/
 yPiMjHd6TzxPdbjEAsczkOTJczq4mSRiRynKjYEy+TYzy1xgdE1zIJXy2/9vYGoApqn5
 bABzq6Qw62DWUeozayarTw2nwoXVqF+ECzSjEGxQ19hVouAYlfvOm/mbatC11WTgZPid
 waG+oHukmK/adJCtFcV14MeWk+LC+4tXhZ4BBSLYNESQvNqjzWH9WeCqwnmcVVP8a0RM
 NWVcLJ9IOf6o0T8NJBUZpD6Ent+/d52Mgq0FGPsjY6bVTWmIDm8xJGDVbXGQdYhHETiS
 kBaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/NFlc8/2M/Pmm6oLgkw8VYwZK7FquOGJoZ7lGyC1UMY=;
 b=I+XWNX2PSgN+zkuDJNwfri60p2Z0JPPeM79AX9rlwVvPB9BuSKYTdnAIKRtYux3F1d
 DKmV8zht0JO7FLUxkhyX+rOqhM28aKQ+REp+b/q/yPECdPzgBws1PnAdEcfWr8NkA1xJ
 rDiSs9IwwqQk+Wg9ShGXDMAstvTtDe5UlMatsfsAVN7tvDdY82umzoqsnSDC9+Kabiye
 Kgnrsw3GBwzv1c5y+TCVPoO0noM4bB0V+xpgEHtWreLmJNVkmerib1zAKMezcn9LyA58
 UILzaZnIm+RK2pxN0t1AJo3QuC72PQA3Aug6KvmO6OqwUwk2CfbnE57tVRP4gzlvLe/V
 JTFA==
X-Gm-Message-State: AOAM532k1V9Yhk0xDnjbvBqQli1Vv0rBvFE3NeMwTVK8CDVCA0MrFP3z
 b8+b3Phx9MNUK8tEMUVCsQhpUSn+h6E=
X-Google-Smtp-Source: ABdhPJx2okS7vGuY+JHDmmtBWWo/D8Ff1S26GQi4ZheX0au4RVJZJ/kTLvS/GDIdoKRhRfmsXDYUUw==
X-Received: by 2002:ac2:4151:: with SMTP id c17mr6475369lfi.416.1614981056391; 
 Fri, 05 Mar 2021 13:50:56 -0800 (PST)
Received: from localhost.localdomain
 (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id y10sm464796lfl.240.2021.03.05.13.50.55
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Mar 2021 13:50:55 -0800 (PST)
Subject: Re: [PATCH 3/3] phy: bcm-ns-usb2: support updated single CRU reg DT
 binding
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Vivek Unune
 <npcomplete13@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 linux-phy@lists.infradead.org
References: <20210226114501.31086-1-zajec5@gmail.com>
 <20210226114501.31086-3-zajec5@gmail.com>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <068064d6-23f6-e02e-9bc9-5b5970a0744e@gmail.com>
Date: Fri, 5 Mar 2021 22:50:54 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210226114501.31086-3-zajec5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_215057_702415_E72521F2 
X-CRM114-Status: GOOD (  25.60  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Q2MgbGludXgtcGh5QCBhZ2FpbiAoYWZ0ZXIgZml4aW5nIHJlY2lwaWVudHMgTUwgbGltaXQpCgpP
biAyNi4wMi4yMDIxIDEyOjQ1LCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gRnJvbTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IAo+IFVwZGF0ZWQgRFQgYmluZGluZyBtYXBz
IGEgc2luZ2xlIENSVSByZWdpc3RlciB0aGF0IGlzIGRpcmVjdGx5IHVzZWQgZm9yCj4gdGhlIFBI
WSBjb250cm9sLiBBY2Nlc3NpbmcgY29tbW9uIENSVSByZWcgaXMgaGFuZGxlZCB1c2luZyBzeXNj
b24gJgo+IHJlZ21hcC4KPiAKPiBUaGUgb2xkIGJpbmRpbmcgaGFzIGJlZW4gZGVwcmVjYXRlZCBh
bmQgc3RheXMgYXMgYSBmYWxsYmFjayBtZXRob2QuCj4gCj4gU2lnbmVkLW9mZi1ieTogUmFmYcWC
IE1pxYJlY2tpIDxyYWZhbEBtaWxlY2tpLnBsPgo+IC0tLQo+IEl0J3MgYSByZXdvcmtlZCB2ZXJz
aW9uIG9mIG15IGFib25kZWQgMjAxOSBwYXRjaDoKPiBbUEFUQ0ggVjIgMi8yXSBwaHk6IGJjbS1u
cy11c2IyOiBzdXBwb3J0IHVwZGF0ZWQgRFQgYmluZGluZyB3aXRoIHRoZSBDUlUgc3lzY29uCj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzEwMjk4NjMvCj4gLS0tCj4g
ICBkcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYyB8IDUyICsrKysrKysrKysr
KysrKysrKysrKy0tLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKSwgOSBk
ZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYnJvYWRjb20vcGh5LWJj
bS1ucy11c2IyLmMgYi9kcml2ZXJzL3BoeS9icm9hZGNvbS9waHktYmNtLW5zLXVzYjIuYwo+IGlu
ZGV4IDRiMDE1YjhhNzFjMy4uOThkMzI3MjlhNDVkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5
L2Jyb2FkY29tL3BoeS1iY20tbnMtdXNiMi5jCj4gKysrIGIvZHJpdmVycy9waHkvYnJvYWRjb20v
cGh5LWJjbS1ucy11c2IyLmMKPiBAQCAtOSwxNyArOSwyMyBAQAo+ICAgI2luY2x1ZGUgPGxpbnV4
L2Nsay5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gICAjaW5jbHVkZSA8bGludXgv
ZXJyLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tZmQvc3lzY29uLmg+Cj4gICAjaW5jbHVkZSA8bGlu
dXgvbW9kdWxlLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvb2ZfYWRkcmVzcy5oPgo+ICAgI2luY2x1
ZGUgPGxpbnV4L29mX3BsYXRmb3JtLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvcGh5L3BoeS5oPgo+
ICAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ICsjaW5jbHVkZSA8bGludXgv
cmVnbWFwLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPgo+ICAgCj4gICBzdHJ1Y3QgYmNt
X25zX3VzYjIgewo+ICAgCXN0cnVjdCBkZXZpY2UgKmRldjsKPiAgIAlzdHJ1Y3QgY2xrICpyZWZf
Y2xrOwo+ICAgCXN0cnVjdCBwaHkgKnBoeTsKPiArCXN0cnVjdCByZWdtYXAgKmNsa3NldDsKPiAr
CXZvaWQgX19pb21lbSAqYmFzZTsKPiArCj4gKwkvKiBEZXByZWNhdGVkIGJpbmRpbmcgKi8KPiAg
IAl2b2lkIF9faW9tZW0gKmRtdTsKPiAgIH07Cj4gICAKPiBAQCAtMjcsNyArMzMsNiBAQCBzdGF0
aWMgaW50IGJjbV9uc191c2IyX3BoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKPiAgIHsKPiAgIAlz
dHJ1Y3QgYmNtX25zX3VzYjIgKnVzYjIgPSBwaHlfZ2V0X2RydmRhdGEocGh5KTsKPiAgIAlzdHJ1
Y3QgZGV2aWNlICpkZXYgPSB1c2IyLT5kZXY7Cj4gLQl2b2lkIF9faW9tZW0gKmRtdSA9IHVzYjIt
PmRtdTsKPiAgIAl1MzIgcmVmX2Nsa19yYXRlLCB1c2IyY3RsLCB1c2JfcGxsX25kaXYsIHVzYl9w
bGxfcGRpdjsKPiAgIAlpbnQgZXJyID0gMDsKPiAgIAo+IEBAIC00NCw3ICs0OSwxMCBAQCBzdGF0
aWMgaW50IGJjbV9uc191c2IyX3BoeV9pbml0KHN0cnVjdCBwaHkgKnBoeSkKPiAgIAkJZ290byBl
cnJfY2xrX29mZjsKPiAgIAl9Cj4gICAKPiAtCXVzYjJjdGwgPSByZWFkbChkbXUgKyBCQ01BX0RN
VV9DUlVfVVNCMl9DT05UUk9MKTsKPiArCWlmICh1c2IyLT5iYXNlKQo+ICsJCXVzYjJjdGwgPSBy
ZWFkbCh1c2IyLT5iYXNlKTsKPiArCWVsc2UKPiArCQl1c2IyY3RsID0gcmVhZGwodXNiMi0+ZG11
ICsgQkNNQV9ETVVfQ1JVX1VTQjJfQ09OVFJPTCk7Cj4gICAKPiAgIAlpZiAodXNiMmN0bCAmIEJD
TUFfRE1VX0NSVV9VU0IyX0NPTlRST0xfVVNCX1BMTF9QRElWX01BU0spIHsKPiAgIAkJdXNiX3Bs
bF9wZGl2ID0gdXNiMmN0bDsKPiBAQCAtNTgsMTUgKzY2LDI0IEBAIHN0YXRpYyBpbnQgYmNtX25z
X3VzYjJfcGh5X2luaXQoc3RydWN0IHBoeSAqcGh5KQo+ICAgCXVzYl9wbGxfbmRpdiA9ICgxOTIw
MDAwMDAwICogdXNiX3BsbF9wZGl2KSAvIHJlZl9jbGtfcmF0ZTsKPiAgIAo+ICAgCS8qIFVubG9j
ayBETVUgUExMIHNldHRpbmdzIHdpdGggc29tZSBtYWdpYyB2YWx1ZSAqLwo+IC0Jd3JpdGVsKDB4
MDAwMGVhNjgsIGRtdSArIEJDTUFfRE1VX0NSVV9DTEtTRVRfS0VZKTsKPiArCWlmICh1c2IyLT5j
bGtzZXQpCj4gKwkJcmVnbWFwX3dyaXRlKHVzYjItPmNsa3NldCwgMCwgMHgwMDAwZWE2OCk7Cj4g
KwllbHNlCj4gKwkJd3JpdGVsKDB4MDAwMGVhNjgsIHVzYjItPmRtdSArIEJDTUFfRE1VX0NSVV9D
TEtTRVRfS0VZKTsKPiAgIAo+ICAgCS8qIFdyaXRlIFVTQiAyLjAgUExMIGNvbnRyb2wgc2V0dGlu
ZyAqLwo+ICAgCXVzYjJjdGwgJj0gfkJDTUFfRE1VX0NSVV9VU0IyX0NPTlRST0xfVVNCX1BMTF9O
RElWX01BU0s7Cj4gICAJdXNiMmN0bCB8PSB1c2JfcGxsX25kaXYgPDwgQkNNQV9ETVVfQ1JVX1VT
QjJfQ09OVFJPTF9VU0JfUExMX05ESVZfU0hJRlQ7Cj4gLQl3cml0ZWwodXNiMmN0bCwgZG11ICsg
QkNNQV9ETVVfQ1JVX1VTQjJfQ09OVFJPTCk7Cj4gKwlpZiAodXNiMi0+YmFzZSkKPiArCQl3cml0
ZWwodXNiMmN0bCwgdXNiMi0+YmFzZSk7Cj4gKwllbHNlCj4gKwkJd3JpdGVsKHVzYjJjdGwsIHVz
YjItPmRtdSArIEJDTUFfRE1VX0NSVV9VU0IyX0NPTlRST0wpOwo+ICAgCj4gICAJLyogTG9jayBE
TVUgUExMIHNldHRpbmdzICovCj4gLQl3cml0ZWwoMHgwMDAwMDAwMCwgZG11ICsgQkNNQV9ETVVf
Q1JVX0NMS1NFVF9LRVkpOwo+ICsJaWYgKHVzYjItPmNsa3NldCkKPiArCQlyZWdtYXBfd3JpdGUo
dXNiMi0+Y2xrc2V0LCAwLCAweDAwMDAwMDAwKTsKPiArCWVsc2UKPiArCQl3cml0ZWwoMHgwMDAw
MDAwMCwgdXNiMi0+ZG11ICsgQkNNQV9ETVVfQ1JVX0NMS1NFVF9LRVkpOwo+ICAgCj4gICBlcnJf
Y2xrX29mZjoKPiAgIAljbGtfZGlzYWJsZV91bnByZXBhcmUodXNiMi0+cmVmX2Nsayk7Cj4gQEAg
LTkwLDEwICsxMDcsMjcgQEAgc3RhdGljIGludCBiY21fbnNfdXNiMl9wcm9iZShzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCQlyZXR1cm4gLUVOT01FTTsKPiAgIAl1c2IyLT5kZXYg
PSBkZXY7Cj4gICAKPiAtCXVzYjItPmRtdSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJj
ZV9ieW5hbWUocGRldiwgImRtdSIpOwo+IC0JaWYgKElTX0VSUih1c2IyLT5kbXUpKSB7Cj4gLQkJ
ZGV2X2VycihkZXYsICJGYWlsZWQgdG8gbWFwIERNVSByZWdzXG4iKTsKPiAtCQlyZXR1cm4gUFRS
X0VSUih1c2IyLT5kbXUpOwo+ICsJaWYgKG9mX2ZpbmRfcHJvcGVydHkoZGV2LT5vZl9ub2RlLCAi
YnJjbSxzeXNjb24tY2xrc2V0IiwgTlVMTCkpIHsKPiArCQl1c2IyLT5iYXNlID0gZGV2bV9wbGF0
Zm9ybV9pb3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwo+ICsJCWlmIChJU19FUlIodXNiMi0+YmFz
ZSkpIHsKPiArCQkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8gbWFwIGNvbnRyb2wgcmVnXG4iKTsK
PiArCQkJcmV0dXJuIFBUUl9FUlIodXNiMi0+YmFzZSk7Cj4gKwkJfQo+ICsKPiArCQl1c2IyLT5j
bGtzZXQgPSBzeXNjb25fcmVnbWFwX2xvb2t1cF9ieV9waGFuZGxlKGRldi0+b2Zfbm9kZSwKPiAr
CQkJCQkJCSAgICAgICAiYnJjbSxzeXNjb24tY2xrc2V0Iik7Cj4gKwkJaWYgKElTX0VSUih1c2Iy
LT5jbGtzZXQpKSB7Cj4gKwkJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGxvb2t1cCBjbGtzZXQg
cmVnbWFwXG4iKTsKPiArCQkJcmV0dXJuIFBUUl9FUlIodXNiMi0+Y2xrc2V0KTsKPiArCQl9Cj4g
Kwl9IGVsc2Ugewo+ICsJCXVzYjItPmRtdSA9IGRldm1fcGxhdGZvcm1faW9yZW1hcF9yZXNvdXJj
ZV9ieW5hbWUocGRldiwgImRtdSIpOwo+ICsJCWlmIChJU19FUlIodXNiMi0+ZG11KSkgewo+ICsJ
CQlkZXZfZXJyKGRldiwgIkZhaWxlZCB0byBtYXAgRE1VIHJlZ3NcbiIpOwo+ICsJCQlyZXR1cm4g
UFRSX0VSUih1c2IyLT5kbXUpOwo+ICsJCX0KPiArCj4gKwkJZGV2X3dhcm4oZGV2LCAidXNpbmcg
ZGVwcmVjYXRlZCBEVCBiaW5kaW5nXG4iKTsKPiAgIAl9Cj4gICAKPiAgIAl1c2IyLT5yZWZfY2xr
ID0gZGV2bV9jbGtfZ2V0KGRldiwgInBoeS1yZWYtY2xrIik7Cj4gCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
