Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59E7EC7619A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 10:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhWIj6C1A0/87b0acy0/9D0Iy3HtbM5E8SpWSQisLCo=; b=Fnrh0NNW+GM2Gq
	bwMqk6MYtS7P6euA/Ddm33QgElMMW0REYfzmYEUZBqXWOzs60mizqqv3d1vWYPxV0aVjcLYMCSJXx
	w+NhA+WASGTEV2kiCiJeNnpqQoJ2VyjMdOvyKD31KwLk/eDKQoiahLsQ/ltHxLzdqBrbOgJM9Cjfz
	Rw+GnsUQNZqpgpndrS/neXc6KC3ngILGFQel9GYZ271zXM/nejJCBD3+kr2Guy0vPhWQznLLicRBX
	fKFubWNy0IiuVSGK5x2dxkV6lkTyQyYo7wDuN2fwIOWBQjkddaKdHmOGeRbgxvzjFOQ+OSYTri//h
	fVhnNIxYWgF+w1kf9rZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgkTR-00AgRN-05;
	Mon, 27 Mar 2023 10:53:13 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgkTO-00AgQl-0z
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 10:53:11 +0000
Received: by mail-lj1-x231.google.com with SMTP id e11so8476697lji.8
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 03:53:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679914387;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8rVlxo50ZRMJpj54LYT8yYL0LIjvmZfFknzyZvuDRxc=;
        b=gQMxgFQhQ+XgCsTEZPe6WiIcpvJ6VrErfQjFx2qxsT0gPvNzngjf8A0ufcP/vawEPF
         xax9ZGva0ta5qZOV60Q0Z2f92VIfFUaD/WktSLX5DKN+yLVwewHwC5wPDB7+G3msV9H4
         V3wNCM9WcTkqKrE+Qj0j4HEZLp0cuJAW3ZOmOwdqf83NAlkQIriMy0rAvVt3RPk+5avv
         03mxIooubdoONc+X/0XQt1CfX94DHYktNSIX3M2Cy5qWwgyFIg9DqCGwgU5+dyKnJC/c
         tkVS/WyUfis2HjQKtJgG7ddQYnsqHtU2M1hx/9/ykvaDX183UyMJmqDTXcQHLnowWFWK
         25Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679914387;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8rVlxo50ZRMJpj54LYT8yYL0LIjvmZfFknzyZvuDRxc=;
        b=Y0RcX5zf9AdsTtNscDQMNjT6343LL1kJuwtm+U2T45O92R1JESi/qD6CzMbGAeiROe
         dhS56RRWvLOexKD37SsM/xIkoGlRCJ2VWFsQt8wkCzKFscL9OI47rkDgmy8b9BVH95Y1
         C3L4hDoi6v5QIqsvw756x48sx9tKNtvNMhYnFX+H1fBQX6SEg0sdX9yUEuUp6zLt5DDm
         o5Bqw9fwyaqAASleE1hOTGTzkGqm4Z8xRsw/kZHhIU6WpWLFkZKOe/TC13vYXe5XK38d
         o5JRAC8JoKyAV1SLZfV3445cyPuXLQvndVgMtNqAvYLmb66J+8gq/TXPxDxdyNaFnk5j
         e6UA==
X-Gm-Message-State: AAQBX9cMe7MbPU3YfFPSZDRCkCUhPoFO1NVrBOQDurXQIi1qKQX9vUDO
	rsW7fnBa638f+2pMMPbCYwgGKA==
X-Google-Smtp-Source: AKy350amcE3SNY/yZynqjrIkiRBpnixSxtejReSkObtAQp2PGBYuvkg9I0ohQG5IIIhrjEkLchD70w==
X-Received: by 2002:a05:651c:1052:b0:29e:e7b0:efb4 with SMTP id x18-20020a05651c105200b0029ee7b0efb4mr3369009ljm.11.1679914387624;
        Mon, 27 Mar 2023 03:53:07 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id o10-20020a2e730a000000b00294692d8645sm4635491ljc.17.2023.03.27.03.53.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 03:53:07 -0700 (PDT)
Message-ID: <6a545494-832b-d1d9-ad5a-9ed0a724703b@linaro.org>
Date: Mon, 27 Mar 2023 12:52:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into
 USB+DP PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 neil.armstrong@linaro.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
 <20230324215550.1966809-4-dmitry.baryshkov@linaro.org>
 <70957e67-e570-3800-e679-d7c291295999@linaro.org>
 <cfa6af3e-c7bc-894a-119c-5c6c5ea82ec0@linaro.org>
 <85d75550-66f4-2680-c6fe-9c575e916b40@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <85d75550-66f4-2680-c6fe-9c575e916b40@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_035310_414033_AEC13FD7 
X-CRM114-Status: GOOD (  12.98  )
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

CgpPbiAyNy4wMy4yMDIzIDEyOjE0LCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIDI3LzAz
LzIwMjMgMTE6MDUsIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+PiBPbiAyNy8wMy8yMDIzIDA5OjU5
LCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPj4+IE9uIDI0LzAzLzIwMjMgMjI6NTUsIERtaXRyeSBC
YXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4gVGhlIGZpcnN0IFVTQiBQSFkgb24gdGhlIHNtODE1MCBwbGF0
Zm9ybSBpcyByZWFsbHkgdGhlIFVTQitEUCBjb21ibwo+Pj4+IFBIWS4gQWRkIHRoZSBEUCBwYXJ0
IG9mIHRoZSBQSFkuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxk
bWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4+Pj4gLS0tCj4+Pj4gwqAgYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL3NtODE1MC5kdHNpIHwgMTcgKysrKysrKysrKysrKy0tLS0KPj4+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4+Pgo+Pj4+
IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc204MTUwLmR0c2kgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vc204MTUwLmR0c2kKPj4+PiBpbmRleCA5NDkxYmU0YTZiZjAu
LmE2MTgyMThmN2I2OCAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
c204MTUwLmR0c2kKPj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc204MTUwLmR0
c2kKPj4+PiBAQCAtMzM5MiwyMCArMzM5MiwxOSBAQCB1c2JfMl9oc3BoeTogcGh5QDg4ZTMwMDAg
ewo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB1c2Jf
MV9xbXBwaHk6IHBoeUA4OGU5MDAwIHsKPj4+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21w
YXRpYmxlID0gInFjb20sc204MTUwLXFtcC11c2IzLXBoeSI7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY29tcGF0aWJsZSA9ICJxY29tLHNtODE1MC1xbXAtdXNiMy1kcC1waHkiOwo+Pj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwwIDB4MDg4ZTkwMDAgMCAweDE4Yz4s
Cj4+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDAgMHgwODhlODAwMCAw
IDB4MTA+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4
ZTgwMDAgMCAweDM4PiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8
MCAweDA4OGVhMDAwIDAgMHg0MD47Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3Rh
dHVzID0gImRpc2FibGVkIjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjYWRkcmVz
cy1jZWxscyA9IDwyPjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxs
cyA9IDwyPjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByYW5nZXM7Cj4+Pj4gLQo+
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmZ2NjIEdDQ19VU0IzX1BS
SU1fUEhZX0FVWF9DTEs+LAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8JnJwbWhjYyBSUE1IX0NYT19DTEs+LAo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCA8JmdjYyBHQ0NfVVNCM19QUklNX0NMS1JFRl9DTEs+LAo+Pj4+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfVVNCM19QUklNX1BIWV9DT01f
QVVYX0NMSz47Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMgPSAi
YXV4IiwgInJlZl9jbGtfc3JjIiwgInJlZiIsICJjb21fYXV4IjsKPj4+PiAtCj4+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVzZXRzID0gPCZnY2MgR0NDX1VTQjNfRFBfUEhZX1BSSU1f
QkNSPiwKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0ND
X1VTQjNfUEhZX1BSSU1fQkNSPjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXNl
dC1uYW1lcyA9ICJwaHkiLCAiY29tbW9uIjsKPj4+PiBAQCAtMzQyMyw2ICszNDIyLDE2IEBAIHVz
Yl8xX3NzcGh5OiBwaHlAODhlOTIwMCB7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjbG9jay1uYW1lcyA9ICJwaXBlMCI7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjbG9jay1vdXRwdXQtbmFtZXMgPSAidXNiM19waHlfcGlwZV9jbGtfc3Jj
IjsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4+ICsKPj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCB1c2JfMV9kcHBoeTogcGh5QDg4ZWEyMDAgewo+Pj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDAgMHgwODhlYTIwMCAwIDB4MjAwPiwKPj4+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4ZWE0
MDAgMCAweDIwMD4sCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA8MCAweDA4OGVhYTAwIDAgMHgyMDA+LAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPDAgMHgwODhlYTYwMCAwIDB4MjAwPiwKPj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4ZWE4MDAgMCAweDIw
MD47Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjY2xvY2stY2VsbHMgPSA8
MT47Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjcGh5LWNlbGxzID0gPDA+
Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+Pgo+Pj4gSXMgdGhlcmUgYSByZWFz
b24gd2h5IHRoZSBuZXcgZmxhdCBiaW5kaW5ncyBmcm9tIHFjb20sc2M4MjgweHAtcW1wLXVzYjQz
ZHAtcGh5LnlhbWwgYXJlIG5vdCB1c2VkIGluc3RlYWQgPwo+Pj4KPj4KPj4gT2ggb2sgSSBzZWUg
InBoeTogcWNvbS1xbXAtY29tYm86IGNvbnZlcnQgdG8gbmV3ZXIgc3R5bGUgb2YgYmluZGluZ3Mi
IGlzIHRoZSBmb2xsb3d1cCBvZiB0aGlzIHNlcmllLAo+PiBwbGVhc2Ugc3BlY2lmeSBpdCBiZWNh
dXNlIGl0IHdhc24ndCBvYnZpb3VzLi4uCj4gCj4gSSB0aG91Z2h0IHRoYXQgYSBub3RlIGluIHRo
ZSBjb3ZlciBsZXR0ZXIgd2FzIGdvb2QgZW5vdWdoLCBidXQgeWVhaCwgbWF5YmUgaXQgc2hvdWxk
IGJlIG1vcmUgZXhwbGljaXQuIERvIHlvdSB0aGluayBpdCB3YXJyYW50cyB2Mj8gSSBjYW4gc2Vu
ZCBvbmUuCklNTyBpdCdzIHVubmVjZXNzYXJ5IHNvIGxvbmcgYXMgYm90aCBnZXQgaW4uCgpLb25y
YWQKPiAKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
