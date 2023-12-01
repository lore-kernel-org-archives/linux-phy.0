Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8462C10DC1
	for <linux-phy@archiver.kernel.org>; Fri,  1 Dec 2023 06:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TlCmOZzVEseJ3BuvNC4dvjb2v9N5Qq/xCoNVguafblI=; b=zW48AIqC92QqwJ
	t30ILF9Y8nXCU7G14ETtRQI1xrmAo9JvxHcAWtvWtvRmLSGwtdO26d7DoFz+0cp60cjBmj2TxtvRo
	Lg8tHwhp0GdzoyC3D6QMxMHHdRjPUvJzmhvm4eLDf29FUqgKg5Upnj5YRobsbqn+NiXRx+R8G8vw8
	otmt5MgML2aekXRLD0x0h1GT4Od0TOGJ1qTLrslwpM2iheybBQltmmzZIOZFFPUv8JG+wq/LuyQhN
	dXbAeSf4TE5xsBqxpHoF0E2pWaX+BGerpCSZkmmVDkszYZcUrGYAdcBInr8A8JX8vNx5HQS6E782r
	03A7waPaApxV4wLh+ZKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8wgb-00CkJq-1G;
	Fri, 01 Dec 2023 06:07:37 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8wgY-00CkHa-0f
	for linux-phy@lists.infradead.org;
	Fri, 01 Dec 2023 06:07:35 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-77d8c38ea78so89914585a.0
        for <linux-phy@lists.infradead.org>; Thu, 30 Nov 2023 22:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701410851; x=1702015651; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Kgy5hlcvWH3mv4+OMDEYg4gGuadNVhIN6Sw8oNb6ClE=;
        b=cRO1lQIb0sXfrJZF/VioJF8n7tjvGUZeoUzIGWo+0ODETidGFwPU4JykhoUrdcImaa
         V2aSm0Iskik5GjDxSKQMF6TJtE8aZtUSy6RZmQhhkfdizcbx6uSOc9aNfWaDC5hN2A3n
         aGmAlZOGRuOBFDsyMyMJVq2zvVUtyCm+UpW9zQ486l0vB9VFJe1DKjGhZPG0/dRXjHgI
         huq86Wo9aewd7brYMvmf2VrvfMkL8IZQ/czgAQ/Y7cO9r3TGYoWUVT+cTsb51hcxy3qM
         m+xJWjucM+WrgVOjmSNUWmIBYaFegOQe27esWLxMjyhKUvrbz/IXjwk0FvewheXdVXWN
         62NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701410851; x=1702015651;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kgy5hlcvWH3mv4+OMDEYg4gGuadNVhIN6Sw8oNb6ClE=;
        b=Rkg8Lpv5BRSlr+6pLhpZTETJaj+IAb9/3u1QmCC+CoV2prnZ4cmSC+ttK9O4/i66ud
         +80sqIPU4YbGPpBSo+oxLLxqxUtf3oylbWQLfuvyJayZGJizWFP5DLUZz0uvS46zNyKr
         9EKY2wZrqIR3a4Z4TWrdFRa5hF9M/yiYocw45xMlhxGeyYXAJ13RZ/UfQob1JDmzya7m
         yk2UnXzMF1i79bAD66uW7SAI/ZPEfpvfvyWXJJPrvA73Th+6+bluwTwDSnNMqqGgueKm
         IDmrACC11ihjRZc7rI6nq9c92YJfRXCpYcnIVdvGqIpn1VCz7Vv+Qo/VfN6fti868GWA
         PXew==
X-Gm-Message-State: AOJu0YwQwkYTi8rU7jzofymb871O9Wdw4lh7JHGyyFEa8SbZRpTkmjl3
	6j2v6Cc6KU9vKnmnKdm4g2B2
X-Google-Smtp-Source: AGHT+IHu2ksyKFCtF20WA7pQITHq93w/lCv7QCJfM5F0X7XunthNNyJrRVZbimdwRtLy0LpBiPTuQw==
X-Received: by 2002:a05:620a:34d:b0:77d:cd41:1254 with SMTP id t13-20020a05620a034d00b0077dcd411254mr7559516qkm.12.1701410850808;
        Thu, 30 Nov 2023 22:07:30 -0800 (PST)
Received: from thinkpad ([117.213.102.92])
        by smtp.gmail.com with ESMTPSA id d23-20020a05620a159700b0077d749de2a3sm1199149qkk.67.2023.11.30.22.07.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 22:07:30 -0800 (PST)
Date: Fri, 1 Dec 2023 11:37:16 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <20231201060716.GJ4009@thinkpad>
References: <20231127-refclk_always_on-v3-0-26d969fa8f1d@quicinc.com>
 <20231127-refclk_always_on-v3-1-26d969fa8f1d@quicinc.com>
 <78815f1b-7390-40de-8afd-ac71806f4051@linaro.org>
 <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <24fae40a-453b-b14c-923f-88758a246aa7@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_220734_275202_1DD4EFB1 
X-CRM114-Status: GOOD (  28.24  )
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

T24gVHVlLCBOb3YgMjgsIDIwMjMgYXQgMDI6NDk6MThQTSArMDUzMCwgS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSB3cm90ZToKPiAKPiBPbiAxMS8yOC8yMDIzIDI6MjYgUE0sIEtyenlzenRvZiBL
b3psb3dza2kgd3JvdGU6Cj4gPiBPbiAyNy8xMS8yMDIzIDEzOjEzLCBLcmlzaG5hIGNoYWl0YW55
YSBjaHVuZHJ1IHdyb3RlOgo+ID4gPiBEb2N1bWVudCBxY29tLHJlZmNsay1hbHdheXMtb24gcHJv
cGVydHkgd2hpY2ggaXMgbmVlZGVkIGluIHNvbWUgcGxhdGZvcm1zCj4gPiA+IHRvIHN1cHBseSBy
ZWZjbGsgZXZlbiBpbiBQQ0llIGxvdyBwb3dlciBzdGF0ZXMuCj4gPiA+IAo+ID4gPiBTaWduZWQt
b2ZmLWJ5OiBLcmlzaG5hIGNoYWl0YW55YSBjaHVuZHJ1IDxxdWljX2tyaWNoYWlAcXVpY2luYy5j
b20+Cj4gPiA+IC0tLQo+ID4gPiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNj
ODI4MHhwLXFtcC1wY2llLXBoeS55YW1sICAgICAgICB8IDcgKysrKysrKwo+ID4gPiAgIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXBjaWUt
cGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4
MjgweHAtcW1wLXBjaWUtcGh5LnlhbWwKPiA+ID4gaW5kZXggMmMzZDY1NTNhN2JhLi5jNzQ3Yzlm
MzU3OTUgMTAwNjQ0Cj4gPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9waHkvcWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbAo+ID4gPiArKysgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3Fjb20sc2M4MjgweHAtcW1wLXBjaWUtcGh5
LnlhbWwKPiA+ID4gQEAgLTkzLDYgKzkzLDEzIEBAIHByb3BlcnRpZXM6Cj4gPiA+ICAgICAiI3Bo
eS1jZWxscyI6Cj4gPiA+ICAgICAgIGNvbnN0OiAwCj4gPiA+ICsgIHFjb20scmVmY2xrLWFsd2F5
cy1vbjoKPiA+ID4gKyAgICB0eXBlOiBib29sZWFuCj4gPiA+ICsgICAgZGVzY3JpcHRpb246IElu
IHNvbWUgcGxhdGZvcm0gd2hlcmUgUENJZSBzd2l0Y2ggaXMgY29ubmVjdGVkLCBwY2llIHN3aXRj
aCBkdWUgdG8gc29tZSBkZXNpZ24KPiA+IFlvdSByZWNlaXZlZCBhIGNvbW1lbnQgdG8gdXNlIHBy
b3BlciB3cmFwcGluZzogODAuIFBsZWFzZSBpbXBsZW1lbnQgaXQuCj4gSSB3aWxsIHVwZGF0ZSB0
aGlzLgo+ID4gPiArICAgICAgbGltaXRhdGlvbiBmYWlscyB0byBwcm9wYWdlIGNsa3JlcSBzaWdu
YWwgdG8gdGhlIGhvc3QgYW5kIGR1ZSB0byB0aGF0IGhvc3Qgd2lsbCBub3Qgc2VuZAo+ID4gPiAr
ICAgICAgcmVmY2xrLCB3aGljaCAgcmVzdWx0cyBpbiBsaW5rZG93biBpbiBMMS4yIG9yIEwxLjEg
ZXhpdCBpbml0aWF0ZWQgYnkgRVAuCj4gPiA+ICsgICAgICBUaGlzIHByb3BlcnR5IGlmIHNldCBr
ZWVwcyByZWZjbGsgYWx3YXlzIG9uIGV2ZW4gaW4gTG93IHBvd2VyIHN0YXRlcy4KPiA+IFRoZSBw
cm9wZXJ0eSBuYW1lIHN1Z2dlc3RzIHRoYXQncyB0aGUgc3RhdGUgb2YgaGFyZHdhcmUgLSByZWZj
bGsgaXMKPiA+IGFsd2F5cyBvbi4gRGVzY3JpcHRpb24gc3VnZ2VzdHMgeW91IHdhbnQgdG8gaW5z
dHJ1Y3QgT1MgdG8gZG8gc29tZXRoaW5nLgo+ID4gCj4gPiBBZ2FpbiwgdGhpcmQgdGltZSAob25j
ZSBmcm9tIEJqb3JuLCBvbmNlIGZyb20gRG1pdHJ5KSwgcmVwaHJhc2UgcHJvcGVydHkKPiA+IG5h
bWUgYW5kIGRlc2NyaXB0aW9uIHRvIGRlc2NyaWJlIHRoZSBoYXJkd2FyZSBpc3N1ZS4gSSBzZWUg
ZGVzY3JpcHRpb24KPiA+IGltcHJvdmVkLCBidXQgbm90IHRoZSBwcm9wZXJ0eSBuYW1lLiBBZ2Fp
biBpbiB0aGUgZW5kIG9mIGRlc2NyaXB0aW9uIHlvdQo+IAo+IEJvdGggYmpvcm4gYW5kIERtaXRy
eSBnYXZlIGNvbW1lbnRzIHRvIGNoYW5nZSB0aGUgZGVzY3JpcHRpb24gb25seSwgYW5kIG5vdAo+
IHRoZSBwcm9wZXJ0eSBuYW1lLAo+IAo+IGNvcnJlY3QgaWYgSSBhbSB3cm9uZy4KPiAKPiA+IHNh
eSB3aGF0IExpbnV4IHNob3VsZCBkby4gQmluZGluZ3MgZG8gbm90IGRlc2NyaWJlIExpbnV4IE9T
Lgo+IAo+IEkgd2lsbCByZW1vdmUgdGhlIGxhc3QgbGluZSBpbiB0aGUgbmV4dCBwYXRjaC4KPiAK
CllvdSBzaG91bGQgbmFtZSB0aGUgcHJvcGVydHkgYXMsICJxY29tLGtlZXAtcmVmY2xrLWFsd2F5
cy1vbiIKCkFsc28sIG5vIG5lZWQgdG8gc3R1ZmYgdGhlIGJpbmRpbmcgd2l0aCAid2h5IHRoaXMg
cHJvcGVydHkgaXMgcmVxdWlyZWQiLCB0aGF0CmluZm8gc2hvdWxkIGJlIHBhcnQgb2YgdGhlIHBh
dGNoIGRlc2NyaXB0aW9uLiBKdXN0IGRlc2NyaWJlIHdoYXQgdGhpcyBwcm9wZXJ0eQptZWFucyBp
biBiaW5kaW5nLgoKLSBNYW5pCgo+IC0gS3Jpc2huYSBDaGFpdGFueWEuCj4gCj4gPiAKPiA+IEJl
c3QgcmVnYXJkcywKPiA+IEtyenlzenRvZgo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
