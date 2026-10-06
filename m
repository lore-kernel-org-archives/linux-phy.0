Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B303CA5FFE
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 01:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=duhj8oCEyhH+u/KVVKW36zEwCfzXDuHvZ/3ajt0C1/0=; b=2oe2mr+D06AkCZ
	7/YKJv4tgHo08yeMKZgI9VGE73oeWF9tf4UlBPeDmecND61bSeeMA2+Bgwo/Q1fWndkbFnpl/82Ap
	VADBu9rtfCyIXDEmDbSqsVGJ4t/jcy6kDqbfWtTIsb1cgGoVAgvc9WB6iap51iL+uqE+bZjzvBV5B
	vL9SJQpGAY3V8yJvRn8f77fLJwuWIYjwxo17gsMZczXI5H9GqjQ4VD2CSkBlUPMcumH6qZD5XrIUE
	zIaAwnQp4MG43eksZpad5MQBER7ZIbrddh9pcA8QZHF72XV9N28/vLmcoNMPe62X0rJBnNxHT8VPe
	Uifm70zOo4CNuQMl97hQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDu7P-0000000HT1c-1Z8u;
	Tue, 06 Oct 2026 01:37:23 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDu7M-0000000HT0n-2lfZ
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 01:37:21 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-3a7bf792424so1464714a91.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 18:37:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791250638; x=1791855438; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CZvrpE+UCMWuW/cWov2L5qNAmDeOn4P8WPzJ2s8dPcc=;
        b=hU0mqpki/iCCw8lrpavRN2VHhREbwoUHAnlxiYxFChgMQABlpMrfPV0BGu7fUMbsOS
         QWixYb3FWmjSWTvuTdonrQeMPcqVc79YoZU+lNhVNAMndYDnOoZNrwv4/ctnqi627x/Y
         ckk6T3EIifXGM6vOMXSOXsa9K1WddrtJXHGyq65D3ddPKKyF/5H6LAKmjTBXzI/DTyMD
         R/BPOgTBveFwufgyTv+j0jp6c5ejC5kAjigb3PqqSl7C/um9OMNjas2jyAaz0SnA1I8M
         O44j7Xzyeva3tSSYSQ6OV/V+ct2J7KC2jstkgN8KGmd9nK8Wpaq2Z3j1tsnClasSOCMN
         2zuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791250638; x=1791855438;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CZvrpE+UCMWuW/cWov2L5qNAmDeOn4P8WPzJ2s8dPcc=;
        b=MWinh4Pwf5x5Ui0U3zCdxXzfhNdjm2PZBrPCHYOyq20myTB5mRBjHFHxgvPaAbgl11
         H1zvcVNzXMCg2plmEHuveS8t1vLhBgKYzTmiBJt0F9NHskBJ+hMiVv1glmqWmyCFnZQn
         HFNljVp6g+Dl5w0yeLj5BT0LW1Q89msZ+cVpkg7swcj5e59FhY1Oxe6T20UxiaLfS0Ij
         qoQoz0Wb8WUGgB9Vbc52HDYGEPx4EAMO+40/rDmoyjyc8/DD7ymsE42aNK+INeguF5o/
         P/d/S0Oc5rzPBoq9bsjCyaDuk/pmX6cclknpjIFL76dK1S06/VujOfEu645ciSqEQLe5
         XFHw==
X-Forwarded-Encrypted: i=1; AKwUvBwUAi5fB99rvzn0XZ6nT/Ox1QssOliLDN9+gX/wEPaVicxh+l0W4a5v78Js+bLS5zkgLt2zYpLDN48=@lists.infradead.org
X-Gm-Message-State: AFq9FYK4g+iBB3EA3cXpmGAnqsUEJ3EmpN16UL3nUPx2aIi2mXgpoiLj
	r1PIJRr8Y59Pd6krdhRZMP8/EnEJ6G6wagFXsblQZIj2BmQr5PvDggNM
X-Gm-Gg: AYBFou10zQpkrT5ut12/SxVm19g0Ojzn6spXm1gI9Mgyw4dAciKyC6msfjLxVichmvw
	ZK8UTwvbe07jcU09v9WuXBut0U+5biT+4U34Nv52AfZ11U3TpHkDjJTja6ZO6mtku4CinzaDJBW
	zoPBi4ebErTXLlfK0gTPQOkOXJbgbr6Z0D5GpFY92B0n30sBO+MzsRvuLTHb2LLUPKH+w/OOB1f
	B9DqrgNiSj3yPuQDD5nJKgJQOQ4CkKS1X7nW6Wge+EVTzItCJRs5dC4Fq/BkryQDac/+2FZXu+i
	LkOJpH+VMlkTdjpu1w6UJLSz1hsx5ML6YDpawbJFYAAk7mH7mFmR/Cj6RYclhDyI/CxJjBms30w
	AMztzNM5uCoXBz+Jm9ndLvl7ukYyIXdgzbDJe0gWx/1OgeEAQEwtEvBpiDUj3+4OEkPWg0D3wTP
	F5yaB3D6EWOdlvTsqusNt14AafaBcNEYivCHjW0iYWAOdlXXNz7iBx6h8oBrWFdWRpiON3ruYtQ
	GHpDMls/JfLHozbRdWSxGaBD0GSFSVIsVwoADMvBNbtn+c8REAJMqo=
X-Received: by 2002:a17:90b:4d0d:b0:3a7:ecab:c4d3 with SMTP id 98e67ed59e1d1-3a7ecabcdc5mr4934553a91.23.1791250638290;
        Mon, 05 Oct 2026 18:37:18 -0700 (PDT)
Received: from [192.168.0.100] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a8543ab76bsm2081598a91.13.2026.10.05.18.37.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Oct 2026 18:37:17 -0700 (PDT)
Message-ID: <ab91b558-e7e6-4758-b4e3-66e5db75b790@gmail.com>
Date: Tue, 6 Oct 2026 09:37:13 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] phy: nuvoton: phy-ma35d1-usb2: extend to dual-port
 with OTG support
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Jacky Huang
 <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>,
 Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260929020854.1282339-1-a0987203069@gmail.com>
 <20260929020854.1282339-4-a0987203069@gmail.com> <asN29Gi71MIA-2fq@parshuram>
Content-Language: en-US
From: Joey Lu <a0987203069@gmail.com>
In-Reply-To: <asN29Gi71MIA-2fq@parshuram>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_183720_816320_F60D5EB9 
X-CRM114-Status: GOOD (  18.72  )
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

ClZpbm9kIEtvdWwg5pa8IDIwMjYvMTAvNSDkuIvljYggMDY6MDcg5a+r6YGTOgo+IE9uIDI5LTA5
LTI2LCAxMDowOCwgSm9leSBMdSB3cm90ZToKPj4gUEhZMCBhbmQgUEhZMSB1c2UgdGhlIHNhbWUg
cG93ZXItb24vcmVzZXQgc2VxdWVuY2UgaW4gVVNCUE1JU0NSLCB3aXRoCj4+IFBIWTEgY29udHJv
bCBiaXRzIHNoaWZ0ZWQgMTYgcG9zaXRpb25zIHJlbGF0aXZlIHRvIFBIWTAuICBBIHNlcGFyYXRl
Cj4+IGRyaXZlciBmb3IgUEhZMSB3b3VsZCBkdXBsaWNhdGUgdGhpcyBsb2dpYywgc28gdGhlIGV4
aXN0aW5nIGRyaXZlciBpcwo+PiBleHRlbmRlZCB0byBtYW5hZ2UgYm90aCBwb3J0cy4KPj4KPj4g
VGhlIG9yaWdpbmFsIGRyaXZlciBwb2xsZWQgb25seSBERVZDS1NUQiBhZnRlciByZWxlYXNpbmcg
UEhZMCBmcm9tCj4+IHJlc2V0LiAgV2hlbiBVU0IwIG9wZXJhdGVzIGluIGhvc3QgbW9kZSAoVVNC
IElEIHBpbiBmbG9hdGluZyBvciB0aWVkCj4+IGhpZ2gpIG9ubHkgSFNUQ0tTVEIgYW5kIENLMTJN
U1RCIGFzc2VydDsgREVWQ0tTVEIgbmV2ZXIgc2V0cy4gIFBvbGxpbmcKPj4gZXhjbHVzaXZlbHkg
Zm9yIERFVkNLU1RCIGluIGhvc3QgbW9kZSBjYXVzZXMgYSAxIG1zIHRpbWVvdXQgb24gZXZlcnkK
Pj4gcGh5X2luaXQoKSBjYWxsIGZyb20gdGhlIEVIQ0kgZHJpdmVyLiAgVGhlIGluaXQgY2FsbGJh
Y2sgaXMgY2hhbmdlZCB0bwo+PiBhY2NlcHQgZWl0aGVyIGhvc3QtbW9kZSBvciBkZXZpY2UtbW9k
ZSBjbG9jayBzdGFiaWxpdHksIHdoaWNoZXZlcgo+PiBhc3NlcnRzIGZpcnN0Lgo+Pgo+PiBUaGUg
cG93ZXJfb24gYW5kIHBvd2VyX29mZiBjYWxsYmFja3MgYXJlIHJlcGxhY2VkIGJ5IGEgc2luZ2xl
IGluaXQKPj4gY2FsbGJhY2sgdGhhdCBoYW5kbGVzIFBIWSByZXNldCBhbmQgY2xvY2stc3RhYmxl
IHBvbGxpbmcsIGJlY2F1c2UKPj4gdGhlcmUgaXMgbm8gUEhZLXNwZWNpZmljIGNsb2NrIGdhdGUg
b24gTUEzNUQxOyB0aGUgUEhZIGFuYWxvZyBibG9jawo+PiBkZXJpdmVzIGl0cyByZWZlcmVuY2Ug
ZnJvbSB0aGUgSFhUIGNyeXN0YWwuCj4+Cj4+IEEgcmVhZC1vbmx5IFVTQiByb2xlIHN3aXRjaCBp
cyByZWdpc3RlcmVkIGZvciBQSFkwIHRvIGV4cG9zZSB0aGUgVVNCMAo+PiByb2xlIHRvIHVzZXJz
cGFjZSB2aWEgdGhlIHN0YW5kYXJkIHJvbGUtc3dpdGNoIHN5c2ZzIGludGVyZmFjZS4gIFRoZQo+
PiAuc2V0IGNhbGxiYWNrIHJldHVybnMgLUVPUE5PVFNVUFAgYmVjYXVzZSB0aGUgaGFyZHdhcmUg
bXV4IGlzIGZ1bGx5Cj4+IGF1dG9tYXRpYyB3aXRoIG5vIHNvZnR3YXJlIG92ZXJyaWRlIHBhdGgu
ICBXaGVuIENPTkZJR19VU0JfUk9MRV9TV0lUQ0gKPj4gaXMgbm90IGVuYWJsZWQsIHRoZSByZWdp
c3RyYXRpb24gcmV0dXJucyAtRU5PREVWIGFuZCB0aGUgZHJpdmVyIHNraXBzCj4+IHRoZSByb2xl
IHN3aXRjaCBncmFjZWZ1bGx5IHdpdGhvdXQgZmFpbGluZyBwcm9iZS4KPj4KPj4gVHdvIG5ldyBv
cHRpb25hbCBkZXZpY2UtdHJlZSBwcm9wZXJ0aWVzIGFyZSBpbXBsZW1lbnRlZDoKPj4gICAgLSBu
dXZvdG9uLHJjYWxjb2RlOiB3cml0ZXMgcGVyLXBvcnQgNC1iaXQgcmVzaXN0b3IgY2FsaWJyYXRp
b24gdHJpbQo+PiAgICAgIGNvZGVzIHRvIHRoZSBSQ0FMQ09ERSBmaWVsZCBpbiBVU0JQTUlTQ1Iu
Cj4+ICAgIC0gbnV2b3RvbixvYy1hY3RpdmUtaGlnaDogc2V0cyB0aGUgVUhPVlJDVVJIIGJpdCBp
biBNSVNDRkNSMCB0byB0cmVhdAo+PiAgICAgIHRoZSBvdmVyLWN1cnJlbnQgZGV0ZWN0IGlucHV0
IGFzIGFjdGl2ZS1oaWdoLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKb2V5IEx1IDxhMDk4NzIwMzA2
OUBnbWFpbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvcGh5L251dm90b24vcGh5LW1hMzVkMS11
c2IyLmMgfCAyODYgKysrKysrKysrKysrKysrKysrKy0tLS0tLS0KPj4gICAxIGZpbGUgY2hhbmdl
ZCwgMjExIGluc2VydGlvbnMoKyksIDc1IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvbnV2b3Rvbi9waHktbWEzNWQxLXVzYjIuYyBiL2RyaXZlcnMvcGh5L251dm90
b24vcGh5LW1hMzVkMS11c2IyLmMKPj4gaW5kZXggOWE0NTliNzAwZWQ0Li41NDdjN2Q1NWQ4ZmYg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGh5L251dm90b24vcGh5LW1hMzVkMS11c2IyLmMKPj4g
KysrIGIvZHJpdmVycy9waHkvbnV2b3Rvbi9waHktbWEzNWQxLXVzYjIuYwo+PiBAQCAtMSwxMSAr
MSwxNiBAQAo+PiAgIC8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wCj4+ICAgLyoK
Pj4gLSAqIENvcHlyaWdodCAoQykgMjAyNCBOdXZvdG9uIFRlY2hub2xvZ3kgQ29ycC4KPj4gKyAq
IE51dm90b24gTUEzNUQxIFVTQiAyLjAgUEhZIGRyaXZlcgo+PiArICoKPj4gKyAqIFN1cHBvcnRz
IFBIWTAgKFVTQjAgT1RHIHBvcnQsIHNoYXJlZCBiZXR3ZWVuIERXQzIgZ2FkZ2V0IGFuZCBFSENJ
MC9PSENJMCkKPj4gKyAqIGFuZCBQSFkxIChVU0IxIGhvc3Qtb25seSBwb3J0LCB1c2VkIGJ5IEVI
Q0kxL09IQ0kxKS4gVGhlIGhhcmR3YXJlIG11eCBvbgo+PiArICogUEhZMCBzd2l0Y2hlcyBhdXRv
bWF0aWNhbGx5IHZpYSB0aGUgVVNCIElEIHBpbi4KPj4gKyAqCj4+ICsgKiBDb3B5cmlnaHQgKEMp
IDIwMjYgTnV2b3RvbiBUZWNobm9sb2d5IENvcnAuCj4gTm90IGNvcnJlY3QsIHRoaXMgc2hvdWxk
IGJlIHVwZGF0ZWQgdG8gMjAyNC0yMDI2LCB5b3UgZG9udCBkcm9wIHRoZQo+IGNvcHlyaWdodCBu
b3RpY2VzLCB5b3UgdXBkYXRlIHRoZW0hCkFncmVlZCwgd2lsbCBmaXggaW4gdjcgdG8gcHJlc2Vy
dmUgdGhlIG9yaWdpbmFsIDIwMjQgZGF0ZSBhbmQgcmVmbGVjdCAKdGhpcyBzZXJpZXMnIGNoYW5n
ZXMuCj4+ICAgICovCj4+ICAgI2luY2x1ZGUgPGxpbnV4L2JpdGZpZWxkLmg+Cj4+ICAgI2luY2x1
ZGUgPGxpbnV4L2Nsay5oPgo+PiAgICNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgo+PiAtI2luY2x1
ZGUgPGxpbnV4L2lvLmg+Cj4gd2h5IGlzIHRoaXMgZHJvcHBlZD8KVGhpcyBkcml2ZXIgbmV2ZXIg
ZGlkIGRpcmVjdCBNTUlPIGFjY2VzcyAobm8gcmVhZGwoKS93cml0ZWwoKS9pb3JlbWFwKCkvCl9f
aW9tZW0pLCBldmVuIGJlZm9yZSB0aGlzIHNlcmllcyAtIGFsbCByZWdpc3RlciBhY2Nlc3MgZ29l
cyB0aHJvdWdoCnJlZ21hcCB2aWEgc3lzY29uX3JlZ21hcF9sb29rdXBfYnlfcGhhbmRsZSgpLiBT
byBsaW51eC9pby5oIHdhcyBhbgp1bnVzZWQgaW5jbHVkZSBhbHJlYWR5LCBhbmQgaXQncyBkcm9w
cGVkIGhlcmUgYXMgcGFydCBvZiB0aGUgYnJvYWRlcgpyZXdyaXRlIHRvdWNoaW5nIHRoaXMgaW5j
bHVkZSBibG9jay4gSGFwcHkgdG8ga2VlcCBpdCBpZiB5b3UnZCBwcmVmZXIKbm90IHRvIGJ1bmRs
ZSB1bnJlbGF0ZWQgaW5jbHVkZSBjbGVhbnVwIGludG8gdGhpcyBzZXJpZXMuCgpUaGFua3MgZm9y
IHRoZSByZXZpZXcuCgpCUiwKSm9leQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgt
cGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcGh5Cg==
