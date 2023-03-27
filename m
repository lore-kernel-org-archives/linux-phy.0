Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7381C76195
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 10:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJIogbuarXnIXRwFO/Wb2DzbmF+TCy8kjRlkSTIDRFE=; b=0oFAE64/7il3jh
	9D8+5h+cB/4QcBfNvvnUGmOTWU6Vw3vjRgFNZ42w+Mpp/x3VKbc+LqWn1hrPnPzUcLRvOtPh/rac3
	n1mnfUhNQKJcIclvdwptLK7W7pi8eAnjfeR+BlcAS8P0TMkdO+97bYDJ3jf4j9fUXhDJuxtrBIV5c
	IQQkhAvV71+blmPt81sNeu66y9e6giZ4AtI/kiwZnljKDP3u7cJggd4O97n9145arHTD/kw8I28dr
	YNNxR+Stq9IvW8VauMl4Sa8TO4u5sXzv8v6LKO7kxUuqUJ5yfa4ed0VFfWMYau43v1PuCmlA0gLgQ
	rMpmGuKMflXZiLmKSh7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjru-00AbXU-14;
	Mon, 27 Mar 2023 10:14:26 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjrr-00AbW3-0Q
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 10:14:24 +0000
Received: by mail-lf1-x12a.google.com with SMTP id h25so10669998lfv.6
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 03:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679912060;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q/ExcHKxJq69sl8W7PMViChgzotjBz2UGdEzIpXe8ec=;
        b=Hngo9t2B5cVSpOGD54+y2hTk18YJq2g9dKybQxqqT1EAe1jP9p+2F1oKhZJvPyUax1
         d4862Qbw9dLg681A1TAbiDnScPc5ZOec1qlGXeh9xfpLqCno03c81m/bDYB33430pInF
         ui9JRA2Gc0UCyRnH/L/Xs49zSOZ8CYjvWmXHnlI2KR8Ym0HrE8NJ6nEKYJVqd0EZg2Nr
         HH0ntZ/Uwe2yTZ9TNLJWSC4DjGc/fclLj+6fn4Z3AYUGDyLAU8dFVX3LCJEAmoEbhVAA
         AWK+VUPYuO9N2CSYflk+9mbQt160pRnddxFBo4fitLcgOyIorrnNW8QITawMVDZ+SB3S
         FEHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679912060;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Q/ExcHKxJq69sl8W7PMViChgzotjBz2UGdEzIpXe8ec=;
        b=LHz52V1ZsHM+aXXhRokErwrEAJuzo8fY0pdyz4aa2B3t3XrJiFB4GSFu0lwf7xvhwR
         JRZSc9LzhC+C7dn1OmTCsonls+llPr0c/OAXlqBSBFsqFVm8ATo4B+/tEXvEMUn9a02e
         L8w+ityP0QARI2NZdwNQB5rw/5gMv3gzO3At02freDdiK6CZAGHj2ewRQ+taCwJij1kJ
         wZT0A9WAKWUIPY1lZPI+qUWnwBYgFeGpKqKxksUr2vvdf6x+hwa6/AEqqZZrgKa5RSLE
         TJzuC0V6TfSqjNlcpHSW2emhox2esTyxbokh4iCnDleLxySOoGAM2VnQrbyAtSCthA2x
         xEYw==
X-Gm-Message-State: AAQBX9cQrusk29Fh/N97c4MDUgNDABp2J9WoAI+Vn1tkjffaRUKKhfxb
	bszHCtfzcZpdoXA7W+CzAfs7+g==
X-Google-Smtp-Source: AKy350bcRtso4dzJxPb8m95F1N+pXUaytvkQUwpB3IIgz4S3WIPT6D99/shJgqDLSRTDr7rmL++BoA==
X-Received: by 2002:ac2:596d:0:b0:4dd:a633:2ae4 with SMTP id h13-20020ac2596d000000b004dda6332ae4mr3496214lfp.39.1679912060436;
        Mon, 27 Mar 2023 03:14:20 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id h11-20020ac250cb000000b004db3d57c3a8sm4606981lfm.96.2023.03.27.03.14.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 03:14:20 -0700 (PDT)
Message-ID: <85d75550-66f4-2680-c6fe-9c575e916b40@linaro.org>
Date: Mon, 27 Mar 2023 13:14:19 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sm8150: turn first USB PHY into
 USB+DP PHY
Content-Language: en-GB
To: neil.armstrong@linaro.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230324215550.1966809-1-dmitry.baryshkov@linaro.org>
 <20230324215550.1966809-4-dmitry.baryshkov@linaro.org>
 <70957e67-e570-3800-e679-d7c291295999@linaro.org>
 <cfa6af3e-c7bc-894a-119c-5c6c5ea82ec0@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <cfa6af3e-c7bc-894a-119c-5c6c5ea82ec0@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_031423_170122_EF8F5146 
X-CRM114-Status: GOOD (  13.60  )
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

T24gMjcvMDMvMjAyMyAxMTowNSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gT24gMjcvMDMvMjAy
MyAwOTo1OSwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4+IE9uIDI0LzAzLzIwMjMgMjI6NTUsIERt
aXRyeSBCYXJ5c2hrb3Ygd3JvdGU6Cj4+PiBUaGUgZmlyc3QgVVNCIFBIWSBvbiB0aGUgc204MTUw
IHBsYXRmb3JtIGlzIHJlYWxseSB0aGUgVVNCK0RQIGNvbWJvCj4+PiBQSFkuIEFkZCB0aGUgRFAg
cGFydCBvZiB0aGUgUEhZLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IERtaXRyeSBCYXJ5c2hrb3Yg
PGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KPj4+IC0tLQo+Pj4gwqAgYXJjaC9hcm02NC9i
b290L2R0cy9xY29tL3NtODE1MC5kdHNpIHwgMTcgKysrKysrKysrKysrKy0tLS0KPj4+IMKgIDEg
ZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+Pj4KPj4+IGRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc204MTUwLmR0c2kgCj4+PiBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTgxNTAuZHRzaQo+Pj4gaW5kZXggOTQ5MWJlNGE2YmYw
Li5hNjE4MjE4ZjdiNjggMTAwNjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20v
c204MTUwLmR0c2kKPj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zbTgxNTAuZHRz
aQo+Pj4gQEAgLTMzOTIsMjAgKzMzOTIsMTkgQEAgdXNiXzJfaHNwaHk6IHBoeUA4OGUzMDAwIHsK
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHVzYl8xX3Ft
cHBoeTogcGh5QDg4ZTkwMDAgewo+Pj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0aWJs
ZSA9ICJxY29tLHNtODE1MC1xbXAtdXNiMy1waHkiOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY29tcGF0aWJsZSA9ICJxY29tLHNtODE1MC1xbXAtdXNiMy1kcC1waHkiOwo+Pj4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDAgMHgwODhlOTAwMCAwIDB4MThjPiwKPj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4ZTgwMDAgMCAweDEwPjsK
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4ZTgwMDAgMCAw
eDM4PiwKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4ZWEw
MDAgMCAweDQwPjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0YXR1cyA9ICJkaXNh
YmxlZCI7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjYWRkcmVzcy1jZWxscyA9IDwy
PjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNzaXplLWNlbGxzID0gPDI+Owo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmFuZ2VzOwo+Pj4gLQo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY2xvY2tzID0gPCZnY2MgR0NDX1VTQjNfUFJJTV9QSFlfQVVYX0NMSz4s
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZycG1oY2MgUlBNSF9D
WE9fQ0xLPiwKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBH
Q0NfVVNCM19QUklNX0NMS1JFRl9DTEs+LAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIDwmZ2NjIEdDQ19VU0IzX1BSSU1fUEhZX0NPTV9BVVhfQ0xLPjsKPj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrLW5hbWVzID0gImF1eCIsICJyZWZfY2xrX3NyYyIs
ICJyZWYiLCAiY29tX2F1eCI7Cj4+PiAtCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBy
ZXNldHMgPSA8JmdjYyBHQ0NfVVNCM19EUF9QSFlfUFJJTV9CQ1I+LAo+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19VU0IzX1BIWV9QUklNX0JDUj47Cj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldC1uYW1lcyA9ICJwaHkiLCAiY29tbW9u
IjsKPj4+IEBAIC0zNDIzLDYgKzM0MjIsMTYgQEAgdXNiXzFfc3NwaHk6IHBoeUA4OGU5MjAwIHsK
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMgPSAicGlw
ZTAiOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9jay1vdXRwdXQt
bmFtZXMgPSAidXNiM19waHlfcGlwZV9jbGtfc3JjIjsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIH07Cj4+PiArCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB1c2JfMV9kcHBoeTog
cGh5QDg4ZWEyMDAgewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8
MCAweDA4OGVhMjAwIDAgMHgyMDA+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8MCAweDA4OGVhNDAwIDAgMHgyMDA+LAo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MCAweDA4OGVhYTAwIDAgMHgyMDA+LAo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MCAweDA4OGVhNjAw
IDAgMHgyMDA+LAo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8MCAweDA4OGVhODAwIDAgMHgyMDA+Owo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAjY2xvY2stY2VsbHMgPSA8MT47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICNwaHktY2VsbHMgPSA8MD47Cj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pgo+
PiBJcyB0aGVyZSBhIHJlYXNvbiB3aHkgdGhlIG5ldyBmbGF0IGJpbmRpbmdzIGZyb20gCj4+IHFj
b20sc2M4MjgweHAtcW1wLXVzYjQzZHAtcGh5LnlhbWwgYXJlIG5vdCB1c2VkIGluc3RlYWQgPwo+
Pgo+IAo+IE9oIG9rIEkgc2VlICJwaHk6IHFjb20tcW1wLWNvbWJvOiBjb252ZXJ0IHRvIG5ld2Vy
IHN0eWxlIG9mIGJpbmRpbmdzIiBpcyAKPiB0aGUgZm9sbG93dXAgb2YgdGhpcyBzZXJpZSwKPiBw
bGVhc2Ugc3BlY2lmeSBpdCBiZWNhdXNlIGl0IHdhc24ndCBvYnZpb3VzLi4uCgpJIHRob3VnaHQg
dGhhdCBhIG5vdGUgaW4gdGhlIGNvdmVyIGxldHRlciB3YXMgZ29vZCBlbm91Z2gsIGJ1dCB5ZWFo
LCAKbWF5YmUgaXQgc2hvdWxkIGJlIG1vcmUgZXhwbGljaXQuIERvIHlvdSB0aGluayBpdCB3YXJy
YW50cyB2Mj8gSSBjYW4gCnNlbmQgb25lLgoKLS0gCldpdGggYmVzdCB3aXNoZXMKRG1pdHJ5CgoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
