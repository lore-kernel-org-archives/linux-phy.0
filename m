Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0020C54E76
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jan 2023 20:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66di9qf+ERGj8aYlO9bgXgg27htY96xj7xwcFqmdaFI=; b=Ki4Rckk7dZSZa5
	nk4YQ/eSe4DlQjMlAxyz5mBuYdFySLJqBFA07OlDszv9oafZs0CJJg6PDehFx34+5Sx2MRKGBB/MY
	s+CBZvWNzCqzIL3+I0tpPcfePNX8lc28p8Lc9rYbvXJqLSDVX7P58e8RcEEblIXtXl9zomhSB0uOh
	qC3qlWUHcEArmTZD5RYe6iz4/G/wMsSl7atp7Et6zAdPUKP7Ep8WdRzfJlOpYB7W2SqkuPpYTwB1E
	+QQ2TJBGgBRbIzdie2LviqzmHp0/I3/mklInAo9Vtab55u3LsGKlk/X50hpc68/tsmvORg76EuTW4
	tA3PX1oP+JEANph98LOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHs9O-00FhvD-7h; Tue, 17 Jan 2023 20:01:42 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHs9L-00Fhu7-8x
	for linux-phy@lists.infradead.org; Tue, 17 Jan 2023 20:01:40 +0000
Received: by mail-wr1-x42e.google.com with SMTP id b7so5790566wrt.3
        for <linux-phy@lists.infradead.org>; Tue, 17 Jan 2023 12:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4NbgmQ7vwZWISWrpORFndGUj0Z1v8WzwxSlAH052uaI=;
        b=DDkxuKKBdTiKhwMOyfxlHgaEFjJoxSsFSon4tpKtYWiAsylwRuduHnpWAlMh7TIu5d
         JqTK48Ax6peub1bM63LMmpHukChbBB/fEKpUHCI8TQEHitR883aApOvxbn9GcUYY404e
         hxvRfDMj+UEA1qyAmwDlCy3/b4IMHm7izEKK2kWEkxUrYpo5xea4jIWf0uvixsQYFvCJ
         Q1z/tMAHGqN4VbeUl83nZXq/8peD0AQkZEXLLJ/hTLKSl/r7gFTQexzuItqI5ikTa/3P
         S9JOc2oY4pBoatoJHqRi97IZGnSKr5vA1yYZMy6v+avnIRLUx7ORskp0qU+77zkVfIfr
         W4JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4NbgmQ7vwZWISWrpORFndGUj0Z1v8WzwxSlAH052uaI=;
        b=xFon1Gu3qLmr9q2voFWLJOOxXyGYC7OpFoEvlG0K/pS+fdiKzhZmyouPyKER4rbna8
         PnReVVDZEDidzQRi2WJXpNag2v33SMjk2p5d71A8eixGAKvTnZpr6l0Sdb0V3qRe3ucW
         8xctDAR5ja+UhhkfiW0oV9JXSAuDWFpgAbYm7OPZLoxCp187OVY6RtPcfB+7OnVZH8cp
         vUmWb/xGbQpxFCpuPb+pq4LaQIf78yzyv8SZKxYcMdR9ypp2gn9BS0RRwxlPhzUROlLf
         4eZDgmzN55HZF5T1SiXOQAFdUhBq+R+MgFO22RcM/Ahp/ucZqzQpnQJNd3ILhwFD5sVc
         e0mw==
X-Gm-Message-State: AFqh2kr9jtblHXyh+Fc4wCFTaluwn4met1vQDCqjlCmevCddtEuqbLcU
	QVw5lAG8avpsYi6iMqdF+9j6IQ==
X-Google-Smtp-Source: AMrXdXs4vMDYW9Wv8LmQ84pxtZoBKU4CXfy3IowTrSQqP8YN9k1B4gP9qV3XvnQv4pX/+ICuhpLO4Q==
X-Received: by 2002:a5d:50c9:0:b0:2bd:db42:36cd with SMTP id f9-20020a5d50c9000000b002bddb4236cdmr3825481wrt.0.1673985694939;
        Tue, 17 Jan 2023 12:01:34 -0800 (PST)
Received: from [192.168.0.15] (cpc76484-cwma10-2-0-cust274.7-3.cable.virginm.net. [82.31.201.19])
        by smtp.gmail.com with ESMTPSA id i15-20020a05600011cf00b00294176c2c01sm29185345wrx.86.2023.01.17.12.01.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Jan 2023 12:01:34 -0800 (PST)
Message-ID: <b127bf23-8752-47be-d98e-4a61794a3c48@linaro.org>
Date: Tue, 17 Jan 2023 20:01:32 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v6 4/6] arm64: dts: qcom: sm6125: Add UFS nodes
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Lux Aliaga <they@mint.lgbt>,
 agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
 keescook@chromium.org, tony.luck@intel.com, gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
 martin.botka@somainline.org, marijn.suijten@somainline.org
References: <20230108195336.388349-1-they@mint.lgbt>
 <20230108195336.388349-5-they@mint.lgbt>
 <475d3f2f-114f-d6d2-89db-465ba7acd0d6@linaro.org>
 <f1f1337a-30cc-df3c-81d5-2daac61e874c@mint.lgbt>
 <PxopLVxLOIJ3_2bHt6pxk7OW4uY69s6KglHqShGI_CuUgDQFA_yn8HwD5gdoQpMpvYYqKXqVNhOQmwBQ6y0REQ==@protonmail.internalid>
 <51a8bb85-8fda-2d79-f753-9461316bae9e@linaro.org>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <51a8bb85-8fda-2d79-f753-9461316bae9e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_120139_355793_F1DD5C52 
X-CRM114-Status: GOOD (  16.16  )
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

CgpPbiAxMS8wMS8yMDIzIDEyOjA0LCBLb25yYWQgRHliY2lvIHdyb3RlOgo+IAo+IAo+IE9uIDEx
LjAxLjIwMjMgMDM6NTMsIEx1eCBBbGlhZ2Egd3JvdGU6Cj4+Cj4+IE9uIDA5LzAxLzIwMjMgMDk6
MTgsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4+Pgo+Pj4gT24gOC4wMS4yMDIzIDIwOjUzLCBMdXgg
QWxpYWdhIHdyb3RlOgo+Pj4+IEFkZHMgYSBVRlMgaG9zdCBjb250cm9sbGVyIG5vZGUgYW5kIGl0
cyBjb3JyZXNwb25kaW5nIFBIWSB0bwo+Pj4+IHRoZSBzbTYxMjUgcGxhdGZvcm0uCj4+Pj4KPj4+
PiBTaWduZWQtb2ZmLWJ5OiBMdXggQWxpYWdhIDx0aGV5QG1pbnQubGdidD4KPj4+PiAtLS0KPj4+
PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc202MTI1LmR0c2kgfCA1NyArKysrKysrKysr
KysrKysrKysrKysrKysrKysrCj4+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDU3IGluc2VydGlvbnMo
KykKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc202MTI1
LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fjb20vc202MTI1LmR0c2kKPj4+PiBpbmRleCBk
ZjU0NTNmY2YyYjkuLmNlYzcwNzFkNTI3OSAxMDA2NDQKPj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3Fjb20vc202MTI1LmR0c2kKPj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3Fj
b20vc202MTI1LmR0c2kKPj4+PiBAQCAtNTExLDYgKzUxMSw2MyBAQCBzZGhjXzI6IG1tY0A0Nzg0
MDAwIHsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAiZGlzYWJsZWQi
Owo+Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoCB9Owo+Pj4+IMKgICvCoMKgwqDCoMKgwqDCoCB1ZnNf
bWVtX2hjOiB1ZnNANDgwNDAwMCB7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29tcGF0
aWJsZSA9ICJxY29tLHNtNjEyNS11ZnNoYyIsICJxY29tLHVmc2hjIiwgImplZGVjLHVmcy0yLjAi
Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlZyA9IDwweDA0ODA0MDAwIDB4MzAwMD4s
IDwweDA0ODEwMDAwIDB4ODAwMD47Cj4+PiBZb3UgbmVlZCByZWctbmFtZXMgZm9yIElDRSB0byBw
cm9iZSwgb3RoZXJ3aXNlIHRoZSBzZWNvbmQgcmVnIHNpdHMgdW51c2VkLgo+Pj4KPj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlcnJ1cHRzID0gPEdJQ19TUEkgMzU2IElSUV9UWVBFX0xF
VkVMX0hJR0g+Owo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBoeXMgPSA8JnVmc19tZW1f
cGh5PjsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwaHktbmFtZXMgPSAidWZzcGh5IjsK
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBsYW5lcy1wZXItZGlyZWN0aW9uID0gPDE+Owo+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNyZXNldC1jZWxscyA9IDwxPjsKPj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCByZXNldHMgPSA8JmdjYyBHQ0NfVUZTX1BIWV9CQ1I+Owo+Pj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJlc2V0LW5hbWVzID0gInJzdCI7Cj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgaW9tbXVzID0gPCZhcHBzX3NtbXUgMHgyMDAgMHgwPjsKPj4+PiAr
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY2xvY2stbmFtZXMgPSAiY29yZV9jbGsiLAo+
Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgImJ1c19hZ2dy
X2NsayIsCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAi
aWZhY2VfY2xrIiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICJjb3JlX2Nsa191bmlwcm8iLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgInJlZl9jbGsiLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgInR4X2xhbmUwX3N5bmNfY2xrIiwKPj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJyeF9sYW5lMF9zeW5jX2NsayIsCj4+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiaWNlX2NvcmVfY2xr
IjsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjbG9ja3MgPSA8JmdjYyBHQ0NfVUZTX1BI
WV9BWElfQ0xLPiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2Mg
R0NDX1NZU19OT0NfVUZTX1BIWV9BWElfQ0xLPiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfQUhCX0NMSz4sCj4+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmZ2NjIEdDQ19VRlNfUEhZX1VOSVBST19DT1JFX0NMSz4s
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDwmcnBtY2MgUlBNX1NNRF9Y
T19DTEtfU1JDPiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2Mg
R0NDX1VGU19QSFlfVFhfU1lNQk9MXzBfQ0xLPiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfUlhfU1lNQk9MXzBfQ0xLPiwKPj4+PiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPCZnY2MgR0NDX1VGU19QSFlfSUNFX0NPUkVf
Q0xLPjsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBmcmVxLXRhYmxlLWh6ID0gPDUwMDAw
MDAwIDI0MDAwMDAwMD4sCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDwwIDA+LAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8
MCAwPiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDM3NTAw
MDAwIDE1MDAwMDAwMD4sCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIDwwIDA+LAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCA8
MCAwPiwKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgPDAgMD4s
Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDw3NTAwMDAwMCAz
MDAwMDAwMDA+Owo+Pj4+ICsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdGF0dXMgPSAi
ZGlzYWJsZWQiOwo+Pj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+Pj4+ICsKPj4+PiArwqDCoMKgwqDC
oMKgwqAgdWZzX21lbV9waHk6IHBoeUA0ODA3MDAwIHsKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb21wYXRpYmxlID0gInFjb20sc202MTI1LXFtcC11ZnMtcGh5IjsKPj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCByZWcgPSA8MHgwNDgwNzAwMCAweDFjND47Cj4+PiBJc24ndCB0aGlz
IHRvbyBzbWFsbD8gRG93bnN0cmVhbSBzYXlzIDB4ZGI4LCBidXQgaXQncyBwcm9iYWJseSBldmVu
IGJpZ2dlci4uCj4+IFdoYXQgZG8geW91IHRoaW5rIGNvdWxkIGhlbHAgbWUgZmluZCB0aGUgbmV3
IGxlbmd0aCBvZiB0aGUgcmVnaXN0ZXJzPyBJIHRyaWVkIDB4MTAwMCBhbmQgaXQgcHJvYmVkIGp1
c3QgZmluZSwgYnV0IEknbSBub3QgcmVhbGx5IHN1cmUgdW50aWwgd2hhdCBleHRlbnQgSSBjb3Vs
ZCBwdXNoIGl0Lgo+IFRoZSAidHJ1ZSIgdmFsdWVzIGFyZSBwcm9iYWJseSBvbmx5IGluIGRvY3Vt
ZW50YXRpb24sIHdoaWNoCj4gSSBkb24ndCBoYXZlLgoKVGhpcyBwYXRjaCBzZXJpZXMgdXNlcyB0
aGUgIm5ldyIgRFQgbGF5b3V0LCB3aGVyZSB0aGVyZSBpc24ndCBhIHN1Ym5vZGUKdG8gZGVmaW5l
IHRoZSBhZGRyZXNzIHJhbmdlcyBvZiB0aGUgZGlmZmVyZW50IGNvbXBvbmVudHMuCgpUaGUgcmVn
IHNpemUgd291bGQgYmUgY29ycmVjdCBpZiBpdCB1c2VkIHRoZSAibGVnYWN5IiBEVCBsYXlvdXQu
CgpDb25maXJtaW5nIGluIGRvd25zdHJlYW0sIDB4ZGI4IGlzIHRoZSBjb3JyZWN0IHZhbHVlIChp
dCdzIHdoYXQgRFQgdXNlcwp0aGVyZSBhbmQgdGhlIHBoeS1xY29tLXVmcy1xbXAtdjMtNjYwIGRy
aXZlciBjb25maXJtcyB0aGUgYmlnZ2VzdApyZWdpc3RlciBvZmZzZXQgaXMgUEhZX0JBU0UgKDB4
YzAwKSArIFBIWV9TSVpFICgweDFiNCkgPSAweGRiNCBpbmNsdXNpdmUpCgpJJ2Qgc3VnZ2VzdCBn
b2luZyBmb3IgdGhhdCBpbiB5b3VyIG5leHQgcmV2aXNpb24gTHV4Lgo+IAo+IEtvbnJhZAo+PgoK
LS0gCktpbmQgUmVnYXJkcywKQ2FsZWIgKHRoZXkvdGhlbSkKCi0tIApsaW51eC1waHkgbWFpbGlu
ZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
