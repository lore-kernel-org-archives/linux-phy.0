Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 485DAC32771
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 19:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+TR7xBG3ahMSshrDH3Q0tLD9QKbKqKtVYIptsjcdsh8=; b=PU85j+hGSP+gqp
	kWq2MNe1vSt2ZG/0kHCG0uD8VRL3K1sy+QrZpf3aeUT+WsWjlxwf5LHjaVfyQ918UmJ2c39r7kn63
	NgSDaYgBdgtn8H1L4hfrbRJ4NVVMiPcq8Pt1EU367nTuxjGVP09zMdQ0gNogR2m/iHARaMXjXwEkh
	aLHhz8HLjDdUn1OYRC/XVDiTlyyj9vL6oK2npawlZnAYcxRp+Qv5qWRtbVEfJw0v4v6foEMzrj40M
	F6VI0QfKTtV/j/gguGjn766GO1QOuap8SqHKVo4LX0Hz3FEjqO7+rpocISKDyumgSg9z9EIOcCaHF
	HfrfTG490yuQCPAw14ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odd33-000B92-Fz; Wed, 28 Sep 2022 19:48:49 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odd30-000B8b-Hc
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 19:48:48 +0000
Received: by mail-lf1-x12a.google.com with SMTP id d42so22028588lfv.0
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 12:48:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=XZ2C8PFfFGZso1Vlxd/6CVlqAXMIAAgQjF1Biv8y1Og=;
        b=oCTGbIFkQYEci/Hbrd+xQ2vUzu1JTp4bVF0X114/0S8uFUFyZ3oPjwFO5UCnnYpzCf
         aTd0405dOaHXJb7smPuSto6XHWEHX8gG8L1nIBWyRr5k6bF6IMHHgNsTklxaAHwyBHWf
         v7Ph2+oE1wSbZ9zKE/YGhty3gzsBDLGLsVQFl/ytM3utLvNNseVAPrK2a3qfy7LQdNGy
         wpu7QCR2VSsgMU+FVCOJyoga4qlSyxao/0OQSC6tTszGEZwHTuDDa6uHREbfBxhPRrfP
         sRtMRKTiyv/6rUDU1GYQytaUGQoOV5ypAYLH5kb6H2bnBe2zXGGoTjJ2J3AzWvvyOUiP
         LFIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=XZ2C8PFfFGZso1Vlxd/6CVlqAXMIAAgQjF1Biv8y1Og=;
        b=Iwl6Qo5vGCtb+tWHmYr6Dz9TYLx1wluHzVA1v3/qQUMf8x+/wEFLFL+HG3MvX6Hm3l
         g5LonE+9/HZehlTyzgalFVSJXoIsc24OjH4V46kl+Hu7Ut3T5D/wlM+U33IIQeu4diic
         PidyRM1+KxQA+zyeigQJJWnE87plM4IMYzMXqTVREfNVA9D486RDZ8yUp7dFXGQUtfvg
         MrC1A8tKcf5e2jkvfazEckcmg3TVFtYqZc0oB6i455gbAYqqngB2L/tIR+XTvZpuN7YP
         mXQtuWRpsDNoOcMzoca+FmHOOg0X4akEdCit/PQGDOiSK4Rau9tRT2fOJK6fdv7l6Sz2
         F2/g==
X-Gm-Message-State: ACrzQf322fN+kxEXp9SYReYcPxmGKojTKCAn0o+E+2jPmUEu9HAvlKxq
	dm5EtHumDQPTQmH7SZJbTmxBfwXhQiN7Cg==
X-Google-Smtp-Source: AMsMyM5XvHWk0KfJlDfwWXBgryoUNqTHEfxcLsVWW9BozcMHMnmLr5A58Hhz+IkNmELGPVFaP9fDzg==
X-Received: by 2002:a05:6512:3f97:b0:4a1:f6b9:5198 with SMTP id x23-20020a0565123f9700b004a1f6b95198mr2368963lfa.588.1664394521910;
        Wed, 28 Sep 2022 12:48:41 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id g19-20020ac25393000000b0049482adb3basm558108lfh.63.2022.09.28.12.48.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 12:48:41 -0700 (PDT)
Message-ID: <f9d0fb60-3e62-8f55-015e-88ca2e209323@linaro.org>
Date: Wed, 28 Sep 2022 22:48:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 06/13] phy: qcom-qmp-pcie: drop bogus register update
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220928152822.30687-1-johan+linaro@kernel.org>
 <20220928152822.30687-7-johan+linaro@kernel.org>
 <2bc50ea4-ec29-cacc-216b-1c21d2d2f0bc@linaro.org>
In-Reply-To: <2bc50ea4-ec29-cacc-216b-1c21d2d2f0bc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_124846_632686_EBFD3D3F 
X-CRM114-Status: GOOD (  19.24  )
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

T24gMjgvMDkvMjAyMiAyMjoxMCwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPiBPbiAyOC8wOS8y
MDIyIDE4OjI4LCBKb2hhbiBIb3ZvbGQgd3JvdGU6Cj4+IFNpbmNlIGNvbW1pdCAwZDU4MjgwY2Yx
ZTYgKCJwaHk6IFVwZGF0ZSBQSFkgcG93ZXIgY29udHJvbCBzZXF1ZW5jZSIpIHRoZQo+PiBQSFkg
aXMgcG93ZXJlZCBvbiBiZWZvcmUgY29uZmlndXJpbmcgdGhlIHJlZ2lzdGVycyBhbmQgb25seSB0
aGUgTVNNODk5Ngo+PiBQQ0llIFBIWSwgd2hpY2ggaW5jbHVkZXMgdGhlIFBPV0VSX0RPV05fQ09O
VFJPTCByZWdpc3RlciBpbiBpdHMgUENTCj4+IGluaXRpYWxpc2F0aW9uIHRhYmxlLCBtYXkgcG9z
c2libHkgcmVxdWlyZSBhIHNlY29uZCB1cGRhdGUgYWZ0ZXJ3YXJkcy4KPj4KPj4gVG8gbWFrZSB0
aGluZ3Mgd29yc2UsIHRoZSBQT1dFUl9ET1dOX0NPTlRST0wgcmVnaXN0ZXIgbGllcyBhdCBhCj4+
IGRpZmZlcmVudCBvZmZzZXQgb24gbW9yZSByZWNlbnQgU29DcyBzbyB0aGF0IHRoZSBzZWNvbmQg
dXBkYXRlLCB3aGljaAo+PiBzdGlsbCB1c2VkIGEgaGFyZC1jb2RlZCBvZmZzZXQsIHdvdWxkIHdy
aXRlIHRvIGFuIHVucmVsYXRlZCByZWdpc3Rlcgo+PiAoZS5nLiBhIHJldmlzaW9uLWlkIHJlZ2lz
dGVyIG9uIFNDODI4MFhQKS4KPj4KPj4gQXMgdGhlIE1TTTg5OTYgUENJZSBQSFkgaXMgbm93IGhh
bmRsZWQgYnkgYSBzZXBhcmF0ZSBkcml2ZXIsIHNpbXBseSBkcm9wCj4+IHRoZSBib2d1cyByZWdp
c3RlciB1cGRhdGUuCj4+Cj4+IEZpeGVzOiBlNGQ4YjA1YWQ1ZjkgKCJwaHk6IHFjb20tcW1wOiBV
c2UgcHJvcGVyIFBXUkRPV04gb2Zmc2V0IGZvciAKPj4gc204MTUwIFVTQiIpIGFkZGVkIHN1cHBv
cnQKPiAKPiBJJ20gbm90IHN1cmUgYWJvdXQgdGhlIHBhcnRpY3VsYXIgZml4ZXMgdGFnLiBCYWNr
cG9ydGluZyBmcm9tIHRoZSBzcGxpdCAKPiBkcml2ZXIgaW50byBvbGQgcW1wIGRyaXZlciB3b3Vs
ZCBiZSBhIGNvbXBsZXRlIHBhaW4uCj4gCj4+IFNpZ25lZC1vZmYtYnk6IEpvaGFuIEhvdm9sZCA8
am9oYW4rbGluYXJvQGtlcm5lbC5vcmc+Cj4gCj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBCYXJ5c2hr
b3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KCkFmdGVyIGRpZ2dpbmcgc29tZSBtb3Jl
LCBJIHN0dW1ibGVkIHVwb24gdGhlIGNvbW1pdCAwZDU4MjgwY2YxZTYgKCJwaHk6IApVcGRhdGUg
UEhZIHBvd2VyIGNvbnRyb2wgc2VxdWVuY2UiKSwgd2hpY2ggcHV0cyBleHBsaWNpdCByZWdpc3Rl
ciB3cml0ZSAKaGVyZSwgdGVsbGluZyB0aGF0ICdQQ0llIFBIWXMgbmVlZCBhbiBleHRyYSBwb3dl
ciBjb250cm9sIGJlZm9yZSAKZGVhc3NlcnRzIHJlc2V0IHN0YXRlJy4KCkkgY2FuIGNvbmZpcm0g
dGhpcyB3aXRoIHRoZSByZWdpc3RlciB0YWJsZXMgZnJvbSBkb3duc3RyZWFtIGR0c2kuIEUuZy4g
CmNvbnNpZGVyIHNkbTg0NS1wY2llLmR0cywgcGNpZTAgdGFibGUuIFRoZSBQQ1NfUE9XRVJfRE9X
Tl9DT05UUk9MIGlzIHRoZSAKcmVnaXN0ZXIgMHg4MDQuCgpUaGUgcHJvZ3JhbW1pbmdzIHN0YXJ0
cyB3aXRoIDwweDgwNCAweDEgMHgwPiwgd3JpdGluZyAxIHRvIApQQ1NfUE9XRVJfRE9XTl9DT05U
Uk9MICh3aGljaCBpZiBJJ20gbm90IG1pc3Rha2VuIHdlIGRvIG5vdCBkbyBhdCB0aGlzIAptb21l
bnQpLiBUaGVuIGFmdGVyIHdyaXRpbmcgYWxsIHRoZSBzZXJkZXMvdHgvcngvcGNzL3Bjc19taXNj
IHRhYmxlcyAKY29tZXMgdGhlIHdyaXRlIDwweDgwNCAweDMgMHgwPiAod2hpY2ggeW91IGFyZSB0
cnlpbmcgdG8gcmVtb3ZlIGhlcmUpLgoKU2FtZSBzZXF1ZW5jZSBhcHBsaWVzIHRvIHRoZSBQQ0ll
IFBIWSBvbiBtc204OTk4LgoKTW9zdCBuZXdlciBQSFlzIGhhdmUgdGhlIGV4cGVjdGVkIHNlcXVl
bmNlIChvZiB3cml0aW5nIDB4MyB0byAKUENTX1BPV0VSX0RPV05fQ09OVFJPTCkgYmVmb3JlIHdy
aXRpbmcgYWxsIHJlZ2lzdGVycy4KCkFzIGEgc2hvcnQgc3VtbWFyeTogdW5sZXNzIHdlIGdldCBh
bnkgYWRkaXRpb25hbCBpbmZvcm1hdGlvbiB0aGF0IDg5OTggCmFuZCBzZG04NDUgdGFibGVzIGFy
ZSBpbmNvcnJlY3QsIEknZCBzdWdnZXN0IGFkZGluZyBhIGNvbmRpdGlvbmFsIGhlcmUgCih1Z2gp
IGFuZCB1c2luZyBpdCBoZXJlIGFuZCBpbiBxbXBfcGNpZV9pbml0KCkgY2FsbC4KClZpbm9kLCBC
am9ybiwgZG8geW91IGhhdmUgYW55IGFkZGl0aW9uYWwgaW5mbz8KCj4gCj4+IC0tLQo+PiDCoCBk
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jIHwgNiAtLS0tLS0KPj4gwqAg
MSBmaWxlIGNoYW5nZWQsIDYgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtcGNpZS5jIAo+PiBiL2RyaXZlcnMvcGh5L3F1YWxj
b21tL3BoeS1xY29tLXFtcC1wY2llLmMKPj4gaW5kZXggNDE0NjU0NWZkZjVmLi5lZWE2NmMyNGNm
N2UgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC1wY2ll
LmMKPj4gKysrIGIvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tcW1wLXBjaWUuYwo+PiBA
QCAtMTk1MywxMiArMTk1Myw2IEBAIHN0YXRpYyBpbnQgcW1wX3BjaWVfcG93ZXJfb24oc3RydWN0
IHBoeSAqcGh5KQo+PiDCoMKgwqDCoMKgIHFtcF9wY2llX2NvbmZpZ3VyZShwY3NfbWlzYywgY2Zn
LT5yZWdzLCBjZmctPnBjc19taXNjX3RibCwgCj4+IGNmZy0+cGNzX21pc2NfdGJsX251bSk7Cj4+
IMKgwqDCoMKgwqAgcW1wX3BjaWVfY29uZmlndXJlKHBjc19taXNjLCBjZmctPnJlZ3MsIGNmZy0+
cGNzX21pc2NfdGJsX3NlYywgCj4+IGNmZy0+cGNzX21pc2NfdGJsX251bV9zZWMpOwo+PiAtwqDC
oMKgIC8qCj4+IC3CoMKgwqDCoCAqIFB1bGwgb3V0IFBIWSBmcm9tIFBPV0VSIERPV04gc3RhdGUu
Cj4+IC3CoMKgwqDCoCAqIFRoaXMgaXMgYWN0aXZlIGxvdyBlbmFibGUgc2lnbmFsIHRvIHBvd2Vy
LWRvd24gUEhZLgo+PiAtwqDCoMKgwqAgKi8KPj4gLcKgwqDCoCBxcGh5X3NldGJpdHMocGNzLCBR
UEhZX1YyX1BDU19QT1dFUl9ET1dOX0NPTlRST0wsIGNmZy0+cHdyZG5fY3RybCk7Cj4+IC0KPj4g
wqDCoMKgwqDCoCBpZiAoY2ZnLT5oYXNfcHdyZG5fZGVsYXkpCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oCB1c2xlZXBfcmFuZ2UoY2ZnLT5wd3Jkbl9kZWxheV9taW4sIGNmZy0+cHdyZG5fZGVsYXlfbWF4
KTsKPiAKCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
