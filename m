Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 992FCEB64D9
	for <linux-phy@archiver.kernel.org>; Fri,  7 Jul 2023 20:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMU/jV79LVpkuCjRjHSUYwseYMBpfedJT6PUkll9HFo=; b=Uf+cAJFv68fPbk
	hiU2u2ZGwChg8gSKWuAIyA4MYy8yHaGZN5gcM2768zXhA73onyd1AloJbCZr3j9UepsdWG7EQQfX8
	g3l0F2m4mhOzAfbeDB7Tvqh32LCp6hkFo8wzms9NnhngFyZU8L1iTevPhtH+S/uGKMVJpvfkLdhi8
	4yyKYk6bgFSP8eU4XQcd38Mhto8tVD59kXZsgSnd7VRIHJ5iX9KaqjfkZjRhfA/YxjRcROAvhaGnc
	s/QUrFp8pNsGVzmjDiD95p7pvyDcG9BEEh2Zf2clpkuEXXopyeZgh7r60C6xYXjzIOX9+V5fn1nxC
	3GCVdPYacC3i1fhpd5zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHs8r-005dUI-0R;
	Fri, 07 Jul 2023 20:33:25 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHs8n-005dSW-0N;
	Fri, 07 Jul 2023 20:33:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id DE7D161A5E;
	Fri,  7 Jul 2023 20:33:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50228C433C9;
	Fri,  7 Jul 2023 20:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688761999;
	bh=6QgMyrqXqeI6SEHa107HdWgEq35vmLXVAeALwcT+lDs=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=Gx9KJf9fL/mmok1L7S1JEw98F7rQhqcE0z1w8BHJD17srLItsZuymDl+Vh6LuOMqc
	 4alUEBZ5opvgHkrhgxf7bnhwEXvTA+lJ+2wjTvLnBj5RIOrUBEqvzoLMwkvr5kKOo5
	 yISOGrruanfS4vCw4yBo4KjJkpCqE5P53NTnagcHPGIOblr6h6cNsX8ys6OcsyQ0H4
	 qrXgMrqCQhWJISUHikJ+H6A9Rt5IkKe3q5S7a3IgZXRpoKmUEEfF3davdWD0SEJOLF
	 x6HLSMnKxFc6bNn9fzW5yjsdHLXCNjC5gVSA2oPohD58IIKPy37fpI2og6S7rvH4ES
	 9S5gMKOibrioQ==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2b703a0453fso37141871fa.3;
        Fri, 07 Jul 2023 13:33:19 -0700 (PDT)
X-Gm-Message-State: ABy/qLYlJK/PjPKN78ZAVANpfzhmwZG9NogbSdzCiOmqwuASC5Uo2hKn
	nT69OIiurC0hGPqR6oUaXIjm9ldYC9yLPxzscQ==
X-Google-Smtp-Source: APBJJlG4YuPBi7t5aJDihdeDntOW9LxmDKsR0D/L3YobFTVh86nYL2PgWf1QDLA9jOV+N7/XaSZs5aykFPftRmtwQjM=
X-Received: by 2002:a2e:8706:0:b0:2b2:104d:8f89 with SMTP id
 m6-20020a2e8706000000b002b2104d8f89mr5474388lji.0.1688761997303; Fri, 07 Jul
 2023 13:33:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230705172759.1610753-1-gatien.chevallier@foss.st.com>
 <20230705172759.1610753-5-gatien.chevallier@foss.st.com> <875y6vzuga.fsf@epam.com>
 <20230707152724.GA329615-robh@kernel.org> <87sf9zya79.fsf@epam.com>
In-Reply-To: <87sf9zya79.fsf@epam.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 7 Jul 2023 14:33:04 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJkkT4SZcHj-RLPpDpX+t3Oe6RHyjeBNh4arWbMx-J0Og@mail.gmail.com>
Message-ID: <CAL_JsqJkkT4SZcHj-RLPpDpX+t3Oe6RHyjeBNh4arWbMx-J0Og@mail.gmail.com>
Subject: Re: [PATCH 04/10] dt-bindings: treewide: add feature-domains
 description in binding files
To: Oleksii Moisieiev <Oleksii_Moisieiev@epam.com>, Peng Fan <peng.fan@nxp.com>
Cc: Gatien Chevallier <gatien.chevallier@foss.st.com>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
	"herbert@gondor.apana.org.au" <herbert@gondor.apana.org.au>, "davem@davemloft.net" <davem@davemloft.net>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"alexandre.torgue@foss.st.com" <alexandre.torgue@foss.st.com>, "vkoul@kernel.org" <vkoul@kernel.org>, 
	"jic23@kernel.org" <jic23@kernel.org>, 
	"olivier.moysan@foss.st.com" <olivier.moysan@foss.st.com>, 
	"arnaud.pouliquen@foss.st.com" <arnaud.pouliquen@foss.st.com>, "mchehab@kernel.org" <mchehab@kernel.org>, 
	"fabrice.gasnier@foss.st.com" <fabrice.gasnier@foss.st.com>, 
	"andi.shyti@kernel.org" <andi.shyti@kernel.org>, "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, 
	"edumazet@google.com" <edumazet@google.com>, "kuba@kernel.org" <kuba@kernel.org>, 
	"pabeni@redhat.com" <pabeni@redhat.com>, 
	"hugues.fruchet@foss.st.com" <hugues.fruchet@foss.st.com>, "lee@kernel.org" <lee@kernel.org>, 
	"will@kernel.org" <will@kernel.org>, "catalin.marinas@arm.com" <catalin.marinas@arm.com>, 
	"arnd@kernel.org" <arnd@kernel.org>, "richardcochran@gmail.com" <richardcochran@gmail.com>, 
	"linux-crypto@vger.kernel.org" <linux-crypto@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-stm32@st-md-mailman.stormreply.com" <linux-stm32@st-md-mailman.stormreply.com>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"dmaengine@vger.kernel.org" <dmaengine@vger.kernel.org>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>, 
	"alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>, 
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, 
	"linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>, 
	"linux-spi@vger.kernel.org" <linux-spi@vger.kernel.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230707_133321_264904_122FC85C 
X-CRM114-Status: GOOD (  30.73  )
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

T24gRnJpLCBKdWwgNywgMjAyMyBhdCAxMDoxMOKAr0FNIE9sZWtzaWkgTW9pc2llaWV2CjxPbGVr
c2lpX01vaXNpZWlldkBlcGFtLmNvbT4gd3JvdGU6Cj4KPgo+IEhpIFJvYiwKPgo+IFJvYiBIZXJy
aW5nIDxyb2JoQGtlcm5lbC5vcmc+IHdyaXRlczoKPgo+ID4gT24gRnJpLCBKdWwgMDcsIDIwMjMg
YXQgMDI6MDc6MThQTSArMDAwMCwgT2xla3NpaSBNb2lzaWVpZXYgd3JvdGU6Cj4gPj4KPiA+PiBH
YXRpZW4gQ2hldmFsbGllciA8Z2F0aWVuLmNoZXZhbGxpZXJAZm9zcy5zdC5jb20+IHdyaXRlczoK
PiA+Pgo+ID4+ID4gZmVhdHVyZS1kb21haW5zIGlzIGFuIG9wdGlvbmFsIHByb3BlcnR5IHRoYXQg
YWxsb3dzIGEgcGVyaXBoZXJhbCB0bwo+ID4+ID4gcmVmZXIgdG8gb25lIG9yIG1vcmUgZmVhdHVy
ZSBkb21haW4gY29udHJvbGxlcihzKS4KPiA+PiA+Cj4gPj4gPiBEZXNjcmlwdGlvbiBvZiB0aGlz
IHByb3BlcnR5IGlzIGFkZGVkIHRvIGFsbCBwZXJpcGhlcmFsIGJpbmRpbmcgZmlsZXMgb2YKPiA+
PiA+IHRoZSBwZXJpcGhlcmFsIHVuZGVyIHRoZSBTVE0zMiBmaXJld2FsbCBjb250cm9sbGVycy4g
SXQgYWxsb3dzIGFuIGFjY3VyYXRlCj4gPj4gPiByZXByZXNlbnRhdGlvbiBvZiB0aGUgaGFyZHdh
cmUsIHdoZXJlIHZhcmlvdXMgcGVyaXBoZXJhbHMgYXJlIGNvbm5lY3RlZAo+ID4+ID4gdG8gdGhp
cyBmaXJld2FsbCBidXMuIFRoZSBmaXJld2FsbCBjYW4gdGhlbiBjaGVjayB0aGUgcGVyaXBoZXJh
bCBhY2Nlc3Nlcwo+ID4+ID4gYmVmb3JlIGFsbG93aW5nIGl0IHRvIHByb2JlLgo+ID4+ID4KPiA+
PiA+IFNpZ25lZC1vZmYtYnk6IEdhdGllbiBDaGV2YWxsaWVyIDxnYXRpZW4uY2hldmFsbGllckBm
b3NzLnN0LmNvbT4KPiA+PiA+IC0tLQo+ID4+ID4KPiA+PiA+IERpc2NsYWltZXI6IFNvbWUgZXJy
b3Igd2l0aCBkdGJzX2NoZWNrIHdpbGwgYmUgb2JzZXJ2ZWQgYXMgSSd2ZQo+ID4+ID4gY29uc2lk
ZXJlZCB0aGUgcHJvcGVydHkgdG8gYmUgZ2VuZXJpYywgYXMgUm9iIGFza2VkCj4gPj4gPgo+ID4+
ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vc3Qsc3RtMzItaGFz
aC55YW1sICB8IDQgKysrKwo+ID4+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kbWEvc3Qsc3RtMzItZG1hLnlhbWwgICAgICB8IDQgKysrKwo+ID4+ID4gIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9kbWEvc3Qsc3RtMzItZG1hbXV4LnlhbWwgICB8IDQgKysr
Kwo+ID4+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pMmMvc3Qsc3RtMzIt
aTJjLnlhbWwgICAgICB8IDQgKysrKwo+ID4+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9paW8vYWRjL3N0LHN0bTMyLWFkYy55YW1sICB8IDQgKysrKwo+ID4+ID4gIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2lpby9hZGMvc3Qsc3RtMzItZGZzZG0tYWRjLnlhbWwgICAgICB8
IDQgKysrKwo+ID4+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9paW8vZGFj
L3N0LHN0bTMyLWRhYy55YW1sICB8IDQgKysrKwo+ID4+ID4gIC4uLi9kZXZpY2V0cmVlL2JpbmRp
bmdzL21lZGlhL2NlYy9zdCxzdG0zMi1jZWMueWFtbCAgICAgICAgICB8IDQgKysrKwo+ID4+ID4g
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdCxzdG0zMi1kY21pLnlh
bWwgICB8IDQgKysrKwo+ID4+ID4gIC4uLi9iaW5kaW5ncy9tZW1vcnktY29udHJvbGxlcnMvc3Qs
c3RtMzItZm1jMi1lYmkueWFtbCAgICAgICB8IDQgKysrKwo+ID4+ID4gIERvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3Qsc3RtMzItbHB0aW1lci55YW1sICB8IDQgKysrKwo+
ID4+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3Qsc3RtMzItdGlt
ZXJzLnlhbWwgICB8IDUgKysrKysKPiA+PiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbW1jL2FybSxwbDE4eC55YW1sICAgICAgICAgfCA0ICsrKysKPiA+PiA+ICBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3N0bTMyLWR3bWFjLnlhbWwgICAgICAgfCA0
ICsrKysKPiA+PiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3BoeS1z
dG0zMi11c2JwaHljLnlhbWwgfCA0ICsrKysKPiA+PiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5n
cy9yZWd1bGF0b3Ivc3Qsc3RtMzItdnJlZmJ1Zi55YW1sICAgICAgfCA0ICsrKysKPiA+PiA+ICBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvcm5nL3N0LHN0bTMyLXJuZy55YW1sICAg
ICAgfCA0ICsrKysKPiA+PiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc2Vy
aWFsL3N0LHN0bTMyLXVhcnQueWFtbCAgfCA0ICsrKysKPiA+PiA+ICBEb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3Mvc291bmQvc3Qsc3RtMzItaTJzLnlhbWwgICAgfCA0ICsrKysKPiA+
PiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvc3Qsc3RtMzItc2Fp
LnlhbWwgICAgfCA0ICsrKysKPiA+PiA+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9z
dCxzdG0zMi1zcGRpZnJ4LnlhbWwgICAgICAgICAgfCA0ICsrKysKPiA+PiA+ICBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3N0LHN0bTMyLXFzcGkueWFtbCAgICAgfCA0ICsr
KysKPiA+PiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3N0LHN0bTMy
LXNwaS55YW1sICAgICAgfCA0ICsrKysKPiA+PiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdXNiL2R3YzIueWFtbCAgICAgICAgICAgICAgfCA0ICsrKysKPiA+PiA+ICAyNCBm
aWxlcyBjaGFuZ2VkLCA5NyBpbnNlcnRpb25zKCspCj4gPj4gPgo+ID4+ID4gZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jcnlwdG8vc3Qsc3RtMzItaGFzaC55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9zdCxzdG0zMi1o
YXNoLnlhbWwKPiA+PiA+IGluZGV4IGI3NjdlYzcyYTk5OS4uZGFmOGRjYWVmNjI3IDEwMDY0NAo+
ID4+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2NyeXB0by9zdCxz
dG0zMi1oYXNoLnlhbWwKPiA+PiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9jcnlwdG8vc3Qsc3RtMzItaGFzaC55YW1sCj4gPj4gPiBAQCAtNTAsNiArNTAsMTAgQEAg
cHJvcGVydGllczoKPiA+PiA+ICAgIHBvd2VyLWRvbWFpbnM6Cj4gPj4gPiAgICAgIG1heEl0ZW1z
OiAxCj4gPj4gPgo+ID4+ID4gKyAgZmVhdHVyZS1kb21haW5zOgo+ID4+ID4gKyAgICBtaW5JdGVt
czogMQo+ID4+ID4gKyAgICBtYXhJdGVtczogMwo+ID4+ID4gKwo+ID4+Cj4gPj4gSSBiZWxpZXdl
IGZlYXR1cmUtZG9tYWlucyBpcyBnZW5lcmljIGJpbmRpbmcuIFRoaXMgbWVhbnMgdGhhdCBtYXhJ
dGVtcwo+ID4+IGNhbiBiZSBpbXBsZW1lbnRhdGlvbiBkZXBlbmRlbmQuIEkgd291bGQgcmF0aGVy
IGRyb3AgbWF4SXRlbXMgc28gdGhlCj4gPj4gZm9sbG93aW5nIGZvcm1hdCB3aWxsIGJlIHBvc3Np
YmxlOgo+ID4+Cj4gPj4gICAgICAgICAgIGZlYXR1cmUtZG9tYWlucyA9IDwmZXR6cGMgMT4sIDwm
ZXR6cGMgMj4sIDwmc29tZV9vdGhlcl9kb21haW4gMSAyIDMgND4KPiA+PiAgICAgICAgICAgZmVh
dHVyZS1kb21haW4tbmFtZXMgPSAiZmlyZXdhbGwgMSIsICJmaXJld2FsbCAyIiwgIm90aGVyX2Rv
bWFpbiIKPiA+Cj4gPiBUaGUgYWJvdmUgYWxyZWFkeSBhbGxvd3MgdGhpcyAobm90IC1uYW1lcywg
YnV0IHRoZSBudW1iZXIgb2YgZW50cmllcykuCj4gPj4KPiA+PiBBbHNvIEkgYmVsaWV3ZSBkcml2
ZXIgd2lsbCBoYW5kbGUgZmVhdHVyZS1kb21haW4tbmFtZXMgcHJvcGVydHkgc28gaXQKPiA+PiB3
aWxsIHBhcnNlIGZlYXR1cmUtZG9tYWlucyBvbmx5IHJlbGF0ZWQgdG8gdGhlIGZpcmV3YWxsLgo+
ID4KPiA+IE5vdyBJJ20gY3VyaW91cy4gV2hhdCdzIGFuIGV4YW1wbGUgdGhhdCdzIG5vdCBhIGZp
cmV3YWxsPwo+ID4KPiA+IChOb3RlIEknbSBzdGlsbCBub3QgaGFwcHkgd2l0aCB0aGUgbmFtaW5n
IG9mICdmZWF0dXJlJyBhcyBhbnl0aGluZyBpcyBhCj4gPiBmZWF0dXJlLCBidXQgdGhhdCdzIHRo
ZSBsZWFzdCBvZiB0aGUgaXNzdWVzIHJlYWxseS4pCj4gPgo+Cj4gVGhlIGFsdGVybmF0aXZlIHVz
YWdlcyBvZiBmZWF0dXJlLWRvbWFpbnMgd2FzIG9yaWdpbmFsbHkgcHJvcG9zZWQgYnkgbWUKPiBo
ZXJlOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvYzg2OWQyNzUxMTI1MTgxYTU1YmM4
YTg4Yzk2ZTNhODkyYjQyZjM3YS4xNjY4MDcwMjE2LmdpdC5vbGVrc2lpX21vaXNpZWlldkBlcGFt
LmNvbS8KPgo+IEFsc28gSSByZW1lbWJlciBQZW5nIEZhbiBhbHNvIHdhcyBpbnRlcmVzdGVkIGlu
IHRob3NlIGJpbmRpbmdzLgoKSXQgaGVscHMgdG8gQ2MgcGVvcGxlIHdoZW4geW91IHRhbGsgYWJv
dXQgdGhlbS4KCklmIHRoZSBwYXJ0aWVzIGludGVyZXN0ZWQgaW4gdGhpcyB3YW50IHRvIHNlZSBw
cm9ncmVzcyBvbiB0aGlzLCB5b3UKYWxsIG11c3Qgd29yayB0b2dldGhlciBhbmQgc2hvdyB0aGlz
IGlzIGEgc29sdXRpb24gZm9yIG11bHRpcGxlCnBsYXRmb3Jtcy4KCj4gSSB0aGluayB0aGUgdXNl
LWNhc2Ugd2hlbiBvbmUgbm9kZSBpcyBwcm90ZWN0ZWQgYnkgZmlyZXdhbGwgYW5kIGFsc28gaXMK
PiBjb250cm9sbGVkIGJ5IHNjbWkgZmVhdHVyZS1kb21haW4tY29udHJvbGxlciAoQXMgd2FzIHBy
b3Bvc2VkIGluIG15Cj4gcGF0Y2ggc2VyaWVzKSBtYXkgdGFrZSBwbGFjZS4KCkJ1dCBpc24ndCB0
aGUgU0NNSSBkZXZpY2UgcHJvdGVjdGlvbiBpbnRlcmZhY2UgdGhlIHNhbWUgdGhpbmc/IFNvbWUK
aW50ZXJmYWNlIHRvIHNheSAiY2FuIEkgYWNjZXNzIHRoaXMgZGV2aWNlPyIgYW5kL29yIGNvbnRy
b2wgYWNjZXNzIHRvCml0LgoKVGhlIG90aGVyIHBvc3NpYmxlIHVzZSBJJ20gYXdhcmUgb2YgaXMg
c3lzdGVtIHBhcnRpdGlvbmluZy4gT3BlbkFNUCBvcgpzaW1pbGFyIHdoZXJlIGFuIFNvQyBpcyBw
YXJ0aXRpb25lZCBpbnRvIG11bHRpcGxlIE9TIGluc3RhbmNlcyBhbmQKcGVyaXBoZXJhbHMgYXJl
IGFzc2lnbmVkIHRvIGRpZmZlcmVudCBwYXJ0aXRpb25zLgoKPiBBcyBmb3IgdGhlIG5hbWluZyBt
YXliZSB5b3UgaGF2ZSBzb21lIHRob3VnaHRzIGFib3V0IGJldHRlciBuYW1lPwoKSWYgSSBkaWQs
IEkgd291bGQgaGF2ZS4gU29tZXRoaW5nIHdpdGggJ2FjY2VzcycgaW4gaXQgaXMgYXMgZmFyIGFz
IEkndmUgZ290dGVuLgoKUm9iCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
