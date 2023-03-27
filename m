Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAFF4C761A6
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 10:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJd7o3JrtDR61ziVNHCTmef+Y6pt9tEtx2eBIMvB7Yk=; b=qRCBbZDCe6d/Ak
	K/L3lHzVZZ0XoTEpRLhLpox7GvaFzXIfUR9Xh8KWnbzuGd5LeB/ktsQqiYDdmozYVJ+RSZH43IIFz
	llJcxh+2oa3q1pyPzK/hJhHDf/diBlgVksyvBE1Ke9NnIk0gUSm1NWhbwAjtaRf7nPDqvWVXhmkVY
	/j59SLXFFazt1zg4Lsq8Cnbh2A+GLzWBT3aGtuzFJJdqJLHmbOzi7NKYGEL5Z7qCxVjYD9GHZWZFL
	hmT4pkX+iTJMonoaC64Qf2HzXftlaP7I0BDrTEt1otxCcId8haqJan3jJ+T0qJYOt7zkWACJg4pE7
	PcNjRgYfbX3fofTzG8Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjwn-00AcMW-1g;
	Mon, 27 Mar 2023 10:19:29 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgjwi-00AcJV-0Z
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 10:19:27 +0000
Received: by mail-lf1-x129.google.com with SMTP id y15so10686645lfa.7
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 03:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679912357;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BKPgWkriMZQQ65QWAVlZx70hrUakFDU29SbpbKwWfv4=;
        b=tRORhUhQNeeJOgPt2cdorHbLNUEXZ/mMn4uUjm9+czgkn4shCcf1ntJk3FFHeW+tNK
         eX2EfvcYdFZyIDEkfCSJs3dwuOmMYdVZgJDCAK34GEeusi37Ii5ZzOXz58IeZC3to+d4
         mRoHCyQHJOIoeU7qj/2oa4BZCwKBBT9G/uUotzlE7OW0/NI2JnoRjePWqFKZGegISqCB
         Mz+LyLZYk6piXwtUp2oQXuuj6CgfCFXRVefGcmaKl9eNUvAukekmz94F7kfnpplLTEFQ
         NUXh0/iKFfUkKYvdjtJl60qgbEeLurxC+5Jv5xePSn1XOnZqYZTiMkMw4YJIhrqMqssn
         oOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679912357;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BKPgWkriMZQQ65QWAVlZx70hrUakFDU29SbpbKwWfv4=;
        b=ZW4vQzJizdst3w3NLguFDAtGWpOeDrC9LYRPm6Y8DtFKxkwxpidCwfz0xRCF7/STqT
         MudmmRTk/0DtwLGIlkry/R7vQ5NRwHlzZkbwXMKQMQzUfD/1RjmbMe57bkuOHrUHjyzA
         VXst2IrKgBkrclF2v1AqzMNmG0ssRpkAOUJCVov4KFW6vGhRMwaDGBgT2/+KvpiYHfU4
         FnRaSZYgS9Foal0JHd925CvF3L28gzWP5gtJZUM2Udf9ULWqDR3q5eezxjOVZlLnZrun
         d3rex108nmus5DtIVBqvObV1tTgf3ltL0MhoImGieC87FMa+6iJ1EEjaPwOKjWODq6Lx
         XlQA==
X-Gm-Message-State: AAQBX9fHkaLRt2CT50Lw6BBSwyt9rXyzk4jdjmNJLQpFMe+Yxjk7X3KE
	rKm+91dYFiqCjjsprMQgBj3oaA==
X-Google-Smtp-Source: AKy350b9fvh4H81BFWNssJ/rySs3BqalIGOFya3qtuZHeqt+1ff9x4kfPirhiK766w/ZYYPQ/a9z9g==
X-Received: by 2002:a19:ad02:0:b0:4e8:5e39:6238 with SMTP id t2-20020a19ad02000000b004e85e396238mr2956082lfc.42.1679912357601;
        Mon, 27 Mar 2023 03:19:17 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id y8-20020ac24208000000b004d40e22c1eesm4616862lfh.252.2023.03.27.03.19.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 03:19:17 -0700 (PDT)
Message-ID: <3b5e627d-2ea4-aa66-c0d6-58bf0413b47f@linaro.org>
Date: Mon, 27 Mar 2023 13:19:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 6/9] arm64: dts: qcom: sc7280: switch USB+DP QMP PHY to
 new style of bindings
Content-Language: en-GB
To: neil.armstrong@linaro.org, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 Johan Hovold <johan+linaro@kernel.org>, devicetree@vger.kernel.org
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
 <20230326005733.2166354-7-dmitry.baryshkov@linaro.org>
 <be4af5a9-6c82-138d-28dc-73b485fa1a00@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <be4af5a9-6c82-138d-28dc-73b485fa1a00@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_031924_215310_DB5B061C 
X-CRM114-Status: GOOD (  14.55  )
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

T24gMjcvMDMvMjAyMyAxMToxMiwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6Cj4gT24gMjYvMDMvMjAy
MyAwMTo1NywgRG1pdHJ5IEJhcnlzaGtvdiB3cm90ZToKPj4gQ2hhbmdlIHRoZSBVU0IgUU1QIFBI
WSB0byB1c2UgbmV3ZXIgc3R5bGUgb2YgUU1QIFBIWSBiaW5kaW5ncyAoc2luZ2xlCj4+IHJlc291
cmNlIHJlZ2lvbiwgbm8gcGVyLVBIWSBzdWJub2RlcykuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IERt
aXRyeSBCYXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAbGluYXJvLm9yZz4KPj4gLS0tCj4+IMKg
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzcyODAuZHRzaSB8IDU3ICsrKysrKysrKy0tLS0t
LS0tLS0tLS0tLS0tLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDE4IGluc2VydGlvbnMoKyksIDM5
IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29t
L3NjNzI4MC5kdHNpIAo+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9zYzcyODAuZHRzaQo+
PiBpbmRleCA1ZTZmOWY0NDFmMWEuLjg4N2M0OTBiZGQxNCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9h
cm02NC9ib290L2R0cy9xY29tL3NjNzI4MC5kdHNpCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcWNvbS9zYzcyODAuZHRzaQo+PiBAQCAtMTgsNiArMTgsNyBAQAo+PiDCoCAjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvaW50ZXJjb25uZWN0L3Fjb20sc2M3MjgwLmg+Cj4+IMKgICNpbmNsdWRlIDxk
dC1iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9hcm0tZ2ljLmg+Cj4+IMKgICNpbmNsdWRl
IDxkdC1iaW5kaW5ncy9tYWlsYm94L3Fjb20taXBjYy5oPgo+PiArI2luY2x1ZGUgPGR0LWJpbmRp
bmdzL3BoeS9waHktcWNvbS1xbXAuaD4KPj4gwqAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Bvd2Vy
L3Fjb20tcnBtcGQuaD4KPj4gwqAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3Fjb20sc2Rt
ODQ1LWFvc3MuaD4KPj4gwqAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL3Jlc2V0L3Fjb20sc2RtODQ1
LXBkYy5oPgo+PiBAQCAtMzMyNyw0OSArMzMyOCwyNiBAQCB1c2JfMl9oc3BoeTogcGh5QDg4ZTQw
MDAgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldHMgPSA8JmdjYyBHQ0NfUVVT
QjJQSFlfU0VDX0JDUj47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+PiAtwqDCoMKgwqDCoMKg
wqAgdXNiXzFfcW1wcGh5OiBwaHktd3JhcHBlckA4OGU5MDAwIHsKPj4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgY29tcGF0aWJsZSA9ICJxY29tLHNjNzI4MC1xbXAtdXNiMy1kcC1waHkiLAo+PiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAicWNvbSxzbTgyNTAtcW1w
LXVzYjMtZHAtcGh5IjsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmVnID0gPDAgMHgwODhl
OTAwMCAwIDB4MjAwPiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDAg
MHgwODhlODAwMCAwIDB4NDA+LAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCA8MCAweDA4OGVhMDAwIDAgMHgyMDA+Owo+PiArwqDCoMKgwqDCoMKgwqAgdXNiXzFfcW1wcGh5
OiBwaHlAODhlODAwMCB7Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAi
cWNvbSxzYzcyODAtcW1wLXVzYjMtZHAtcGh5IjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cmVnID0gPDAgMHgwODhlODAwMCAwIDB4MzAwMD47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNhZGRy
ZXNzLWNlbGxzID0gPDI+Owo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjc2l6ZS1jZWxscyA9
IDwyPjsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmFuZ2VzOwo+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmdjYyBHQ0NfVVNCM19QUklNX1BIWV9BVVhfQ0xLPiwK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmcnBtaGNjIFJQTUhfQ1hP
X0NMSz4sCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmdjYyBHQ0NfVVNC
M19QUklNX1BIWV9DT01fQVVYX0NMSz47Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2Nr
LW5hbWVzID0gImF1eCIsICJyZWZfY2xrX3NyYyIsICJjb21fYXV4IjsKPj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19VU0IzX1BSSU1fUEhZX0NPTV9BVVhfQ0xL
PiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19VU0IzX1BS
SU1fUEhZX1BJUEVfQ0xLPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMg
PSAiYXV4IiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAi
cmVmIiwKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiY29t
X2F1eCIsCj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgInVz
YjNfcGlwZSI7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0cyA9IDwmZ2NjIEdD
Q19VU0IzX0RQX1BIWV9QUklNX0JDUj4sCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCA8JmdjYyBHQ0NfVVNCM19QSFlfUFJJTV9CQ1I+Owo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCByZXNldC1uYW1lcyA9ICJwaHkiLCAiY29tbW9uIjsKPj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgdXNiXzFfc3NwaHk6IHVzYjMtcGh5QDg4ZTkyMDAgewo+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwwIDB4MDg4ZTkyMDAgMCAweDIwMD4sCj4+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDAgMHgwODhlOTQwMCAw
IDB4MjAwPiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8
MCAweDA4OGU5YzAwIDAgMHg0MDA+LAo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDwwIDB4MDg4ZTk2MDAgMCAweDIwMD4sCj4+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDAgMHgwODhlOTgwMCAwIDB4MjAwPiwKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8MCAweDA4OGU5YTAwIDAg
MHgxMDA+Owo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNjbG9jay1jZWxscyA9
IDwwPjsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjcGh5LWNlbGxzID0gPDA+
Owo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNsb2NrcyA9IDwmZ2NjIEdDQ19V
U0IzX1BSSU1fUEhZX1BJUEVfQ0xLPjsKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBjbG9jay1uYW1lcyA9ICJwaXBlMCI7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY2xvY2stb3V0cHV0LW5hbWVzID0gInVzYjNfcGh5X3BpcGVfY2xrX3NyYyI7Cj4+IC3CoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIH07Cj4+IC0KPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHBf
cGh5OiBkcC1waHlAODhlYTIwMCB7Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cmVnID0gPDAgMHgwODhlYTIwMCAwIDB4MjAwPiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCA8MCAweDA4OGVhNDAwIDAgMHgyMDA+LAo+PiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwwIDB4MDg4ZWFhMDAgMCAweDIwMD4s
Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDAgMHgwODhl
YTYwMCAwIDB4MjAwPiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA8MCAweDA4OGVhODAwIDAgMHgyMDA+Owo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgICNwaHktY2VsbHMgPSA8MD47Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgI2Nsb2NrLWNlbGxzID0gPDE+Owo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+PiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAjY2xvY2stY2VsbHMgPSA8MT47Cj4+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgICNwaHktY2VsbHMgPSA8MT47Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+
PiDCoMKgwqDCoMKgwqDCoMKgwqAgdXNiXzI6IHVzYkA4Y2Y4ODAwIHsKPj4gQEAgLTM2OTQsNyAr
MzY3Miw3IEBAIHVzYl8xX2R3YzM6IHVzYkBhNjAwMDAwIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpb21tdXMgPSA8JmFwcHNfc21tdSAweGUwIDB4MD47Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc25wcyxkaXNfdTJfc3VzcGh5X3F1aXJrOwo+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNucHMsZGlzX2VuYmxzbHBtX3F1
aXJrOwo+PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBoeXMgPSA8JnVzYl8xX2hz
cGh5PiwgPCZ1c2JfMV9zc3BoeT47Cj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
cGh5cyA9IDwmdXNiXzFfaHNwaHk+LCA8JnVzYl8xX3FtcHBoeSAKPj4gUU1QX1VTQjQzRFBfVVNC
M19QSFk+Owo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBoeS1uYW1lcyA9
ICJ1c2IyLXBoeSIsICJ1c2IzLXBoeSI7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgbWF4aW11bS1zcGVlZCA9ICJzdXBlci1zcGVlZCI7Cj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIH07Cj4+IEBAIC0zNzk5LDggKzM3NzcsOCBAQCBkaXNwY2M6IGNsb2NrLWNvbnRy
b2xsZXJAYWYwMDAwMCB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8
JmdjYyBHQ0NfRElTUF9HUExMMF9DTEtfU1JDPiwKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIDwmbWRzc19kc2lfcGh5IDA+LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgPCZtZHNzX2RzaV9waHkgMT4sCj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCA8JmRwX3BoeSAwPiwKPj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIDwmZHBfcGh5IDE+LAo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
PCZ1c2JfMV9xbXBwaHkgUU1QX1VTQjQzRFBfRFBfTElOS19DTEs+LAo+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZ1c2JfMV9xbXBwaHkgUU1QX1VTQjQzRFBfRFBfVkNPX0RJ
Vl9DTEs+LAo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZtZHNzX2Vk
cF9waHkgMD4sCj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8Jm1kc3Nf
ZWRwX3BoeSAxPjsKPiAKPiBUaGUgZ2NjIHVzYjNfcGh5X3dyYXBwZXJfZ2NjX3VzYjMwX3BpcGVf
Y2xrIGVudHJ5IGlzIG1pc3NpbmcsIGl0IHdhcyAKPiBhbHJlYWR5IG1pc3Npbmcgd2l0aCBsZWdh
Y3kgYmluZGluZ3MuCgpQb2ludCBub3RlZCwgaXQgc2hvdWxkIHByb2JhYmx5IGdvIGludG8gYSBz
ZXBhcmF0ZSBjaGFuZ2UuCgo+IAo+IE5laWwKPiAKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgY2xvY2stbmFtZXMgPSAiYmlfdGN4byIsCj4+IEBAIC00MTM4LDggKzQxMTYsOSBAQCBtZHNz
X2RwOiBkaXNwbGF5cG9ydC1jb250cm9sbGVyQGFlOTAwMDAgewo+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAic3RyZWFtX3BpeGVsIjsKPj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhc3NpZ25lZC1jbG9ja3MgPSA8JmRpc3Bj
YyAKPj4gRElTUF9DQ19NRFNTX0RQX0xJTktfQ0xLX1NSQz4sCj4+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8JmRpc3BjYyBESVNQX0NDX01E
U1NfRFBfUElYRUxfQ0xLX1NSQz47Cj4+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
YXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmZHBfcGh5IDA+LCA8JmRwX3BoeSAxPjsKPj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwaHlzID0gPCZkcF9waHk+Owo+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFzc2lnbmVkLWNsb2NrLXBhcmVudHMgPSA8JnVzYl8x
X3FtcHBoeSAKPj4gUU1QX1VTQjQzRFBfRFBfTElOS19DTEs+LAo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZ1c2JfMV9xbXBwaHkg
UU1QX1VTQjQzRFBfRFBfVkNPX0RJVl9DTEs+Owo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHBoeXMgPSA8JnVzYl8xX3FtcHBoeSBRTVBfVVNCNDNEUF9EUF9QSFk+Owo+PiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBoeS1uYW1lcyA9ICJkcCI7Cj4+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgb3BlcmF0aW5nLXBvaW50cy12MiA9IDwmZHBf
b3BwX3RhYmxlPjsKPiAKCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKCi0tIApsaW51eC1w
aHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
