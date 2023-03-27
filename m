Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41397C76195
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 08:05:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KsQroavbB0JZPo7RIQ0wOfXwfPJ7QdGmm/QITTAK/5A=; b=Six7OktIyNTBzu
	bxbpdA5MvtXvQ3rVQYyJ2QSUTm+WPuSRix6HNvUB+TaIDqB1VPwc3O1J1bcx9Sjh1L8Hl9vEvb/8g
	WuQ7osQolosLH2aqXa/4Ox/230fIgAwIPgy/WhPi4ortjJa7xvW3eBZFUEpsVvI0SjaZAs7CLDgSH
	x6cX5NHX2hzrIP/odijWTH0Uhuut+6aHNWdL+qUicB2Kx3grT024Slol4Ku0UO2x4X7XRVbMvMKnm
	llLYuXUX7npkEgQJqmj7yg+Cjr3dbSN0GaUPesKrTaaYbT9C8pur7S2HZnexXjJqEvLzdJVS1LFEH
	nqxbUwqn/IOamdmSPXXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghr5-00AAIU-2x;
	Mon, 27 Mar 2023 08:05:27 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghr2-00AAHH-1H
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 08:05:25 +0000
Received: by mail-wm1-x332.google.com with SMTP id bg16-20020a05600c3c9000b003eb34e21bdfso6723120wmb.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 01:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679904322;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :from:content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=5TVkUFVOMpyQ5j/+7ELg9UktQUNIcDvw4sJrDeUhC3w=;
        b=faVB9Z0jEUZXN/ji25taT6vbqNYAzzMnD2/4Zeg7wK+aLGLTLKZoDu42faY42FYMTV
         4fEH04Dk6jw3GBuzoL+tGI41EKbMpuY6WCGi2jvo6iDznx4uXxEgzUZm54GEDywILCHU
         +w7LGn3BO2OrZ+QHYQs4G/0l54q58Zz7cjJmij0VqZcXC/pSbaau7HkUxj0LNxbNGuef
         5ChV/9/CTDayfbxK/Ki/NapuYKElICjZZyykfGHQ8/9O1W31UdMyYNChBVJ+kVuhpCIN
         59I2SpORKk3s/W7j4fBF0x8WAIUITvjsqeF3+M6apknp8HP1VTSuPsDLEGwuNpCXZPeX
         Fsww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679904322;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :from:content-language:subject:reply-to:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5TVkUFVOMpyQ5j/+7ELg9UktQUNIcDvw4sJrDeUhC3w=;
        b=EVgiYhnPTEfK1sbLLmChvyvW+RcNjEIHxk1EPRKrpC2D5lPBxYk0exdhokfuws5pT8
         zWdwy+4suFtheDvHHwAJvtLAmyocc2TNqUVq0aH2q0fPOVyhW4QP03VwLkFlsbpuxoBt
         +7WxK7rg8+N6RQGc1t4ZkBsLWV5MjKVZGWAuqTmwBTsuXC7O4lTJUUwuQh6mq0XdYReG
         5QVqewANA3k7N12OdNwmpXXjrEYQao2/MDVciYkA/CXUSlBKgiprltqEJdlMBnowI1k5
         CCFB2fmV7FKTqPr4v1kHbU1niY82JBCDWHCcwWoybWUqaZXYFqD34oxJzcpiDMgBO/os
         6taQ==
X-Gm-Message-State: AO0yUKWHmPULXjQKSeb/2+e6GAcbDESbiirPxbB9dlCdigrL8rePXzAw
	iQfWJ/Qc9AVKwzLjkqZTLm5wgA==
X-Google-Smtp-Source: AK7set9R8avpeP4STULTSALcIChWKbBZXu9i79juFRFIZlo4Cvo5wEwJZOmrrnwD8vHfmz+vZzskAQ==
X-Received: by 2002:a05:600c:2110:b0:3ed:2b27:5bcc with SMTP id u16-20020a05600c211000b003ed2b275bccmr8493884wml.38.1679904322138;
        Mon, 27 Mar 2023 01:05:22 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id c26-20020a7bc01a000000b003ee44b2effasm12815256wmb.12.2023.03.27.01.05.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 01:05:21 -0700 (PDT)
Message-ID: <cfa6af3e-c7bc-894a-119c-5c6c5ea82ec0@linaro.org>
Date: Mon, 27 Mar 2023 10:05:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into
 USB+DP PHY
Content-Language: en-US
From: Neil Armstrong <neil.armstrong@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
 <20230324215550.1966809-4-dmitry.baryshkov@linaro.org>
 <70957e67-e570-3800-e679-d7c291295999@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <70957e67-e570-3800-e679-d7c291295999@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_010524_438996_657FF2C3 
X-CRM114-Status: GOOD (  13.94  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gMjcvMDMvMjAyMyAwOTo1OSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gT24gMjQvMDMvMjAy
MyAyMjo1NSwgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4gVGhlIGZpcnN0IFVTQiBQSFkgb24g
dGhlIHNtODE1MCBwbGF0Zm9ybSBpcyByZWFsbHkgdGhlIFVTQitEUCBjb21ibwo+PiBQSFkuIEFk
ZCB0aGUgRFAgcGFydCBvZiB0aGUgUEhZLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgQmFy
eXNoa292IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+Cj4+IC0tLQo+PiDCoCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3Fjb20vc204MTUwLmR0c2kgfCAxNyArKysrKysrKysrKysrLS0tLQo+PiDC
oCAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPj4KPj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTgxNTAuZHRzaSBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcWNvbS9zbTgxNTAuZHRzaQo+PiBpbmRleCA5NDkxYmU0YTZiZjAuLmE2
MTgyMThmN2I2OCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3NtODE1
MC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTgxNTAuZHRzaQo+PiBA
QCAtMzM5MiwyMCArMzM5MiwxOSBAQCB1c2JfMl9oc3BoeTogcGh5QDg4ZTMwMDAgewo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgfTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIHVzYl8xX3FtcHBoeTogcGh5
QDg4ZTkwMDAgewo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRpYmxlID0gInFjb20s
c204MTUwLXFtcC11c2IzLXBoeSI7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGli
bGUgPSAicWNvbSxzbTgxNTAtcW1wLXVzYjMtZHAtcGh5IjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgcmVnID0gPDAgMHgwODhlOTAwMCAwIDB4MThjPiwKPj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPDAgMHgwODhlODAwMCAwIDB4MTA+Owo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MCAweDA4OGU4MDAwIDAgMHgzOD4sCj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4ZWEwMDAgMCAweDQwPjsKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RhdHVzID0gImRpc2FibGVkIjsKPj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgICNzaXplLWNlbGxzID0gPDI+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCByYW5nZXM7Cj4+IC0KPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2tz
ID0gPCZnY2MgR0NDX1VTQjNfUFJJTV9QSFlfQVVYX0NMSz4sCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCA8JnJwbWhjYyBSUE1IX0NYT19DTEs+LAo+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VTQjNfUFJJTV9DTEtSRUZfQ0xL
PiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19VU0Iz
X1BSSU1fUEhZX0NPTV9BVVhfQ0xLPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xv
Y2stbmFtZXMgPSAiYXV4IiwgInJlZl9jbGtfc3JjIiwgInJlZiIsICJjb21fYXV4IjsKPj4gLQo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldHMgPSA8JmdjYyBHQ0NfVVNCM19EUF9Q
SFlfUFJJTV9CQ1I+LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZn
Y2MgR0NDX1VTQjNfUEhZX1BSSU1fQkNSPjsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cmVzZXQtbmFtZXMgPSAicGh5IiwgImNvbW1vbiI7Cj4+IEBAIC0zNDIzLDYgKzM0MjIsMTYgQEAg
dXNiXzFfc3NwaHk6IHBoeUA4OGU5MjAwIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBjbG9jay1uYW1lcyA9ICJwaXBlMCI7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY2xvY2stb3V0cHV0LW5hbWVzID0gInVzYjNfcGh5X3BpcGVfY2xrX3NyYyI7
Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgdXNiXzFfZHBwaHk6IHBoeUA4OGVhMjAwIHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCByZWcgPSA8MCAweDA4OGVhMjAwIDAgMHgyMDA+LAo+PiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4ZWE0MDAgMCAweDIwMD4s
Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDAgMHgwODhl
YWEwMCAwIDB4MjAwPiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA8MCAweDA4OGVhNjAwIDAgMHgyMDA+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4ZWE4MDAgMCAweDIwMD47Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgI2Nsb2NrLWNlbGxzID0gPDE+Owo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICNwaHktY2VsbHMgPSA8MD47Cj4+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIH07Cj4gCj4gSXMgdGhlcmUgYSByZWFzb24gd2h5IHRoZSBuZXcgZmxhdCBiaW5kaW5n
cyBmcm9tIHFjb20sc2M4MjgweHAtcW1wLXVzYjQzZHAtcGh5LnlhbWwgYXJlIG5vdCB1c2VkIGlu
c3RlYWQgPwo+IAoKT2ggb2sgSSBzZWUgInBoeTogcWNvbS1xbXAtY29tYm86IGNvbnZlcnQgdG8g
bmV3ZXIgc3R5bGUgb2YgYmluZGluZ3MiIGlzIHRoZSBmb2xsb3d1cCBvZiB0aGlzIHNlcmllLApw
bGVhc2Ugc3BlY2lmeSBpdCBiZWNhdXNlIGl0IHdhc24ndCBvYnZpb3VzLi4uCgpOZWlsCgo+IE5l
aWwKPiAKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB1c2Jf
Ml9xbXBwaHk6IHBoeUA4OGViMDAwIHsKPiAKCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
