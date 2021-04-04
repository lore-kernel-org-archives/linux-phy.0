Return-Path: <SRS0=C3a/=JB=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8CCBC433ED
	for <linux-phy@archiver.kernel.org>; Sun,  4 Apr 2021 13:37:47 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C2776135D
	for <linux-phy@archiver.kernel.org>; Sun,  4 Apr 2021 13:37:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C2776135D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:Subject:
	From:References:Cc:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BWVO1RRKqR0Lh3a+dcheXuWO+I3+UYLQsNHYmynzj+M=; b=HEVC1zhB0Lff0DJovRpuX9Ug/
	box2fXcrh3PtFYxTxSvWkA6JZ0ULPeJZU38Q3U4rjEV+/AyilwM3MW30+SEph3cLbKRukthy20ZPv
	mqATpYSLydTnVO1jvyg3ux7vF4L35S1v31L4L4Smve+W3QUiFhEKLES9QId0DZz5xpEp10QQGhZ4u
	BCZGX/y6K7CeQyL7ofxGJYniriBZwGFjtuKIkNQTWlQf/Bsi/0+Sl8H0QLHPw9GoIxCJN3hHN63b+
	jUh/ugL45R7D/ZOXSYcmfEU4yFRtMgSl4Xfx4DMbDmeDm+zhfpPIO+TUPrxJQzt8HHsuAinvYg1vJ
	2bpbQEuSg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lT2wj-00Flxn-UV; Sun, 04 Apr 2021 13:37:46 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lT2wZ-00FlxN-6a
 for linux-phy@lists.infradead.org; Sun, 04 Apr 2021 13:37:44 +0000
Received: by mail-lf1-x133.google.com with SMTP id b14so13877358lfv.8
 for <linux-phy@lists.infradead.org>; Sun, 04 Apr 2021 06:37:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:from:subject:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+HyYmPnuWFFMIB7SpjIfrjeRJ9UQQxny2FWb69wvVv0=;
 b=FJXzDuwGBEUuCTztCBPIrjJlZA/CX7RI25lUHFo/GsEUXKQFlfYchi//lxsK0mr8Rb
 XDAo+BY11DGZU3N5MT+lEhXwApPQtYWQKztQRj/m1NfZmIMjvV8Bd6wdm4NCPs4uHnZ6
 8GHsJw55eUWb4w34EymYDs2FqPzLUQ73BqOWyS2RUGS3jfhRL0TBrEEeEtVNqqHrNb6l
 he+5GH5gA8bElV5/eeCRnZMyDpojqwFWYdsMsh4Urw6/RUsZGmzdjzJhZRD3LHug1owe
 XPmRMFS6K1Nx3CbbYI4gjVY7jz6a8g7PW6aRmBiIqGC8Wsp3fDg9uyCO38+uUhHFv3Kq
 wn1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:from:subject:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+HyYmPnuWFFMIB7SpjIfrjeRJ9UQQxny2FWb69wvVv0=;
 b=rXDZGlDczXurg828tAIMBZuABjKqZTYAnuv9cp76I4ILb4cwveHbmK1Jc649BGq+SC
 9Dene36XZgrwW9x65X2XEmwGIXWJPSxlSfUgmOsd6+65FjjtsSUkEBCfR1WnzX8QU8Ed
 6vFxUUv+p7k7FH8sdlQ/9eiRbgEAIl7dGbghTY0fikV19I53bRvvFcjcVFG+AgWlbeW4
 Q2XwMYsJs/TnYGlu6P4IVfeT69VmxTJEvYS2JsZhSllGLHgnArr4tKdAtrTGW61Plmjv
 +OqYpFsQOu6vjfQg2C2fa5/euPVJIc7BkTXDWgsD+/U3q99a8tpYvFwnbqftMQSHUgG2
 zqiQ==
X-Gm-Message-State: AOAM533y1t0t6BxmGGKrOA/nu1xzUWsTkUxerVdqZEnokci7dO+66BX4
 /+8aIScZsVGa6cJTepxfC6Q=
X-Google-Smtp-Source: ABdhPJy30HYImZBK03kv3X4L6uVNJSkQ/Jz4VRA2vHp4FEqO8UBKLgdvEBu1k3f9zBhXIHxmDW0p9g==
X-Received: by 2002:a05:6512:ac9:: with SMTP id
 n9mr15012614lfu.186.1617543452694; 
 Sun, 04 Apr 2021 06:37:32 -0700 (PDT)
Received: from [10.0.0.42] (91-157-86-200.elisa-laajakaista.fi.
 [91.157.86.200])
 by smtp.gmail.com with ESMTPSA id t10sm1451535lfk.58.2021.04.04.06.37.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 04 Apr 2021 06:37:32 -0700 (PDT)
To: Pratyush Yadav <p.yadav@ti.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Benoit Parrot <bparrot@ti.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>, Peter Chen <peter.chen@nxp.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, dmaengine@vger.kernel.org
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-14-p.yadav@ti.com>
From: =?UTF-8?Q?P=c3=a9ter_Ujfalusi?= <peter.ujfalusi@gmail.com>
Subject: Re: [PATCH 13/16] media: ti-vpe: csi2rx: Add CSI2RX support
Message-ID: <1983f3dd-d157-900f-b72f-c8e6987f7ec6@gmail.com>
Date: Sun, 4 Apr 2021 16:38:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210330173348.30135-14-p.yadav@ti.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210404_143742_626629_E4F2A037 
X-CRM114-Status: GOOD (  25.16  )
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

SGkgUHJhdHl1c2gsCgorMSBmcm9tIG1lIGFsc28gdG8gdGhlIHBvaW50cyBUb21pIHJhaXNlZC4K
CmZldyBtaW5vciBjb21tZW50cyBvbiB0aGUgRE1BZW5naWUgc2lkZS4KCk9uIDMvMzAvMjEgODoz
MyBQTSwgUHJhdHl1c2ggWWFkYXYgd3JvdGU6Cj4gVEkncyBKNzIxRSB1c2VzIHRoZSBDYWRlbmNl
IENTSTJSWCBhbmQgRFBIWSBwZXJpcGhlcmFscyB0byBmYWNpbGl0YXRlCj4gY2FwdHVyZSBvdmVy
IGEgQ1NJLTIgYnVzLgo+IAo+IFRoZSBDYWRlbmNlIENTSTJSWCBJUCBhY3RzIGFzIGEgYnJpZGdl
IGJldHdlZW4gdGhlIFRJIHNwZWNpZmljIHBhcnRzIGFuZAo+IHRoZSBDU0ktMiBwcm90b2NvbCBw
YXJ0cy4gVEkgdGhlbiBoYXMgYSB3cmFwcGVyIG9uIHRvcCBvZiB0aGlzIGJyaWRnZQo+IGNhbGxl
ZCB0aGUgU0hJTSBsYXllci4gSXQgdGFrZXMgaW4gZGF0YSBmcm9tIHN0cmVhbSAwLCByZXBhY2tz
IGl0LCBhbmQKPiBzZW5kcyBpdCB0byBtZW1vcnkgb3ZlciBQU0ktTCBETUEuCj4gCj4gVGhpcyBk
cml2ZXIgYWN0cyBhcyB0aGUgImZyb250IGVuZCIgdG8gVjRMMiBjbGllbnQgYXBwbGljYXRpb25z
LiBJdAo+IGltcGxlbWVudHMgdGhlIHJlcXVpcmVkIGlvY3RscyBhbmQgYnVmZmVyIG9wZXJhdGlv
bnMsIHBhc3NlcyB0aGUKPiBuZWNlc3NhcnkgY2FsbHMgb24gdG8gdGhlIGJyaWRnZSwgcHJvZ3Jh
bXMgdGhlIFNISU0gbGF5ZXIsIGFuZCBwZXJmb3Jtcwo+IERNQSB2aWEgdGhlIGRtYWVuZ2luZSBB
UEkgdG8gZmluYWxseSByZXR1cm4gdGhlIGRhdGEgdG8gYSBidWZmZXIKPiBzdXBwbGllZCBieSB0
aGUgYXBwbGljYXRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogUHJhdHl1c2ggWWFkYXYgPHAueWFk
YXZAdGkuY29tPgo+IC0tLQo+ICBNQUlOVEFJTkVSUyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICB8ICAgNyArCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vS2NvbmZpZyAgICAgICAgICAg
IHwgIDExICsKPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS12cGUvTWFrZWZpbGUgICAgfCAg
IDEgKwo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3RpLXZwZS90aS1jc2kycnguYyB8IDk2NCAr
KysrKysrKysrKysrKysrKysrKysrCj4gIDQgZmlsZXMgY2hhbmdlZCwgOTgzIGluc2VydGlvbnMo
KykKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdGktdnBlL3Rp
LWNzaTJyeC5jCgouLi4KCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdGkt
dnBlL3RpLWNzaTJyeC5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS90aS12cGUvdGktY3NpMnJ4
LmMKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uMzU1MjA0YWU0
NzNiCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdGktdnBl
L3RpLWNzaTJyeC5jCgouLi4KCj4gK3N0YXRpYyBpbnQgdGlfY3NpMnJ4X2luaXRfdmIycShzdHJ1
Y3QgdGlfY3NpMnJ4X2RldiAqY3NpKQo+ICt7Cj4gKwlzdHJ1Y3QgdmIyX3F1ZXVlICpxID0gJmNz
aS0+dmlkcTsKPiArCWludCByZXQ7Cj4gKwo+ICsJcS0+dHlwZSA9IFY0TDJfQlVGX1RZUEVfVklE
RU9fQ0FQVFVSRTsKPiArCXEtPmlvX21vZGVzID0gVkIyX01NQVAgfCBWQjJfVVNFUlBUUiB8IFZC
Ml9ETUFCVUYgfCBWQjJfUkVBRDsKPiArCXEtPmRydl9wcml2ID0gY3NpOwo+ICsJcS0+YnVmX3N0
cnVjdF9zaXplID0gc2l6ZW9mKHN0cnVjdCB0aV9jc2kycnhfYnVmZmVyKTsKPiArCXEtPm9wcyA9
ICZjc2lfdmIyX3FvcHM7Cj4gKwlxLT5tZW1fb3BzID0gJnZiMl9kbWFfY29udGlnX21lbW9wczsK
PiArCXEtPnRpbWVzdGFtcF9mbGFncyA9IFY0TDJfQlVGX0ZMQUdfVElNRVNUQU1QX01PTk9UT05J
QzsKPiArCXEtPmRldiA9IGNzaS0+ZG1hLT5kZXZpY2UtPmRldjsKCnEtPmRldiA9IGRtYWVuZ2lu
ZV9nZXRfZG1hX2RldmljZShjc2ktPmRtYSk7Cgo+ICsJcS0+bG9jayA9ICZjc2ktPm11dGV4Owo+
ICsKPiArCXJldCA9IHZiMl9xdWV1ZV9pbml0KHEpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4g
cmV0Owo+ICsKPiArCWNzaS0+dmRldi5xdWV1ZSA9IHE7Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30K
PiArCj4gK3N0YXRpYyBpbnQgdGlfY3NpMnJ4X2luaXRfZG1hKHN0cnVjdCB0aV9jc2kycnhfZGV2
ICpjc2kpCj4gK3sKPiArCXN0cnVjdCBkbWFfc2xhdmVfY29uZmlnIGNmZzsKPiArCWludCByZXQ7
Cj4gKwo+ICsJSU5JVF9MSVNUX0hFQUQoJmNzaS0+ZG1hcS5saXN0KTsKPiArCj4gKwljc2ktPmRt
YSA9IE5VTEw7Cj4gKwo+ICsJY3NpLT5kbWEgPSBkbWFfcmVxdWVzdF9jaGFuKGNzaS0+ZGV2LCAi
cngwIik7Cj4gKwlpZiAoSVNfRVJSKGNzaS0+ZG1hKSkKPiArCQlyZXR1cm4gUFRSX0VSUihjc2kt
PmRtYSk7Cj4gKwo+ICsJbWVtc2V0KCZjZmcsIDAsIHNpemVvZihjZmcpKTsKPiArCj4gKwljZmcu
c3JjX2FkZHJfd2lkdGggPSBETUFfU0xBVkVfQlVTV0lEVEhfMTZfQllURVM7Cj4gKwljZmcuZHN0
X2FkZHJfd2lkdGggPSBETUFfU0xBVkVfQlVTV0lEVEhfMTZfQllURVM7CgpObyBuZWVkIHRvIHNl
dCB0aGUgZHN0X2FkZHJfd2lkdGggYXMgeW91IG9ubHkgc3VwcG9ydCBSWC4KCkFub3RoZXIgbm90
ZTogVURNQSB3aXRoIFBTSS1MIG5hdGl2ZSBwZXJpcGhlcmFscyBpZ25vcmVzIHRoaXMKY29mbmln
dXJhdGlvbiwgb25seSB1c2VkIGZvciBQRE1BcywgYnV0IEkgY2FuIHJlbWFpbiB0byBmdXR1cmUg
cHJvb2YgdGhlCmRyaXZlciBhbmQgdG8ga2VlcCBpdCBnZW5lcmljLgoKPiArCj4gKwlyZXQgPSBk
bWFlbmdpbmVfc2xhdmVfY29uZmlnKGNzaS0+ZG1hLCAmY2ZnKTsKPiArCWlmIChyZXQpCj4gKwkJ
cmV0dXJuIHJldDsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQoKLS0gClDDqXRlcgoKLS0gCmxpbnV4
LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
