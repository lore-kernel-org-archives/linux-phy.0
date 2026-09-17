Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D678EC88E72
	for <linux-phy@archiver.kernel.org>; Thu, 17 Sep 2026 20:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljMz29NUqEkI/RaQvFTRuxd8ZXFU1w5MmGKG2r96rv8=; b=W6Yvoy965VLtji
	Crw3vjcsUz64JGHrxkLddowpdjMHHcBgM+psIslsL36CpKNR5308tNqdm5Zuo4ja82+533NM53Aud
	YkgNuEC9NKn15jB+ILVj1OHAa8hDKejb4LNjdf6QnOZk76c/HoopfxdMiSskamwyfpZwL5k1pOFdQ
	Jeskz64Dgg6uNozQcOo/LMxcqW6VD+qVc4OVUuHAFWqxlKsMGE8MqawPjrqurVfGYSY87KuG1oAf0
	CewApzdXNFG+16s3S+ht5B4ZVAM3zGJ6NEfb85LkgPkc4PuYA4gP0f0iEPskJPex1GXg7OY5FWeNs
	rZiK9bXnQcQ6b6NLA60Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7IJj-0000000COQb-2Pmc;
	Thu, 17 Sep 2026 20:02:47 +0000
Received: from mail-ej2-f11.google.com ([74.125.228.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7IJh-0000000COPR-180b
	for linux-phy@lists.infradead.org;
	Thu, 17 Sep 2026 20:02:46 +0000
Received: by mail-ej2-f11.google.com with SMTP id a640c23a62f3a-c25541acec6so649566b.0
        for <linux-phy@lists.infradead.org>; Thu, 17 Sep 2026 13:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789675363; cv=none;
        d=google.com; s=arc-20260327;
        b=HtIYQK25OhDzw6kTco3ikEF2Uk2x2wWdKH3TiWDMvgi7oKFNNHQeyCCnN/cYjBNPEN
         BIG7GuQaCB73EatJHYNwTekF/UIcnBdrlDph+IxjK6cG8RflcKWbFXpjt5C6/QI6Yr5Y
         VXo/TcxQfx7S3C7We8n7lk14/43p57Us5uhIO3T4N/TfctVskXsSPk9mYTg+AvnTsFGt
         lEmPxDi6HLxKqPSNUJgD3Wy++vj2H/pOwnNYV9+oGajMX23zp3tSzLV33cz4ShUDz+SZ
         1aRuDuwDrkZhbiyxiC+v3/D9OF0q7i5D1y42UFvI3bDrT2wNiYP0R8dEdgXKaAM46jL4
         gbig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=F7mBcc/zD+gqhLUWIiGJPhvEmDVUp2BOJbW6rUgXDAE=;
        fh=NxeIgaUwiV27jfAON4dleType3CVXp8NLobmRay7xFc=;
        b=skUAwAlJLDcSCXUwxS2LktUSETkuyvykjl1LHZhihuc3WLSWcdsnoyXg/9FIGz6p9S
         OW/o/kPhuidfzlZ1ydFDW98Abnj3ChvIpdFKrDFYhx6ILuCSqwlW0NaUiV5tONEfugLl
         WG/U2x114Br6wdJDDKu5lE6QwCIyiWkj+VlKoXLJV7jGZXDpya2V3UBmRYk0IE6pkh+/
         ReP1uaH4Wi/Pe0lv6iMWV6lRL9yaGLVpUoUgzV282azO451MpGGLle1YlF07I0CiiYQ4
         JPzEnOO7jYx2hoCUVP0GB8z6c75qYBfipwSuw/7haYDg9v2m1WrZp1DMMiQ9swEdGH8s
         SulA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789675363; x=1790280163; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=F7mBcc/zD+gqhLUWIiGJPhvEmDVUp2BOJbW6rUgXDAE=;
        b=gzDjG3Vo047VZMqW9aNBjedhF9qqqhVZ4wg8TWutMXiVaSrZZF3nEnncP9VgWpmpFE
         sYszfmG+MyTjb/lBTAWV2XtMYJ5TvYXOulh10hz0L9rcLyBmHkYhXnAaD49xFuiPfTcO
         j0nY30YVEnRO/PyhC9M1uQoyLzci2Yux2aMoVKlM6pDI1Cj2/dl37mmmLBj1k3EEdKA5
         +lCAHXyVNNfWHzcyQigX1aBCZ7uCa02vVFTAKA2mo8CSqzRukvf1sermKkAd60XkyE/F
         PTw8TpLF0kLfBSyCrMHROcyZCwmCaSIHBZ3cJgBeDymo7bpAsXAyQ0gK8uxRkDCnBh9j
         1Qrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789675363; x=1790280163;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=F7mBcc/zD+gqhLUWIiGJPhvEmDVUp2BOJbW6rUgXDAE=;
        b=AQ8wVaehhCegG+P759n4//DRKJlBTMAN5iuTaaD0apq2nA4mZjkRFu2EuLJAdQiTVs
         FdCtKzS3gXcaTZMqfSeV2bI3JIeKQcHWm7EStThfIm4kPXUUuZoA7nXzX6r9ymIqYJkD
         To1Br5yIld6NAmDVdtq+K/H80Z+t8gDhFDVaIdx8sqyM8XswfJvEpS8E9HjBlRkTnRpf
         rs/BCDP0/GjzIhOxI6ak2h0OAAvEwmMnbxspRzW16pDTM9M13GOaCWLRtXmKbaD3Q1hv
         rvVjsMEZKHXbs8/s6Sw96NtagJCNz+7o+PhL40yNG0iHk6w/pRqSImHgjtOKTLV1f2LA
         Jfbw==
X-Forwarded-Encrypted: i=1; AKwUvBzOmd1/KRZsBL942J6EYfKaMFvzZsFu3A9ySkwFqzRgZRYrOPvhIo3+PO1JdQoZyh0PZLLPEStop68=@lists.infradead.org
X-Gm-Message-State: AFuF++nYVbGMkCtRx3iiQD6iqM/BbL+SZ2uhkq9KglucgBt2Is1YNSEC
	IDu8Owjv2iCzmIySIBdpMZrnSNOOJK06jRxRMMiszuCyw5vWEDHZwnvptE3nN/53AMX6yWx8AuA
	BllVDWMQL7BXtFUq8RhQegjt1xu0RIh0=
X-Gm-Gg: AYBFou1D1yaEmA00jrQX5bim1zP6Yq0o9jDcgu4PivjAlp74oz1P4u0lfvGl7fT76ja
	q1fASNTVi6mSViNgzpqh+tJ78uTSAYwGLsk4NBVnvEegCh11trW+VLX6u2lhoGd0iIJILNwkzAL
	sWEZkGUCrIi++9T/q9Up6FEq/oDo7h/H/AexBTo5MvY/PnV/BZqZoiRH3GHjvw+nOZHPwPjSmbs
	YZVYuov/o8Opy/G/sVMAQfs+xSdEIQWVFRQfwvhh/Th+sx/ruTk0BKrTSKMn1CTIMI1sGGD5hAq
	IlEMVZ0fuhtiEBad0JXUPMyHUev7DUKkDb7G1PSHiCgUx9RJPsXnSNP4Gw==
X-Received: by 2002:a17:907:3ea5:b0:c29:4204:8dbf with SMTP id
 a640c23a62f3a-c2a157be91fmr24595366b.7.1789675362739; Thu, 17 Sep 2026
 13:02:42 -0700 (PDT)
MIME-Version: 1.0
References: <20260915123802.1561724-4-coiaprant@gmail.com> <178967028966.22033.2377561177851606071@kernel.org>
In-Reply-To: <178967028966.22033.2377561177851606071@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Fri, 18 Sep 2026 04:02:31 +0800
X-Gm-Features: AcwNN1V0XFtsL3x8UawoWV106fmNQdao8d4jMazcuCe1sSda_ba5TrpA_lpwoh4
Message-ID: <CALj3r0jGVO_bDDkf1ts8ajtsRf8Tq--TG=Hfb4m8B5bbNLryqQ@mail.gmail.com>
Subject: Re: [PATCH net-next v6 03/11] phy: rockchip: naneng-combphy: add
 SGMII MAC selection for RK3568
To: netdev-bot+sashiko@kernel.org
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, heiko@sntech.de, vkoul@kernel.org, 
	maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com, 
	alexandre.torgue@foss.st.com, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	romain.gantois@bootlin.com, hkallweit1@gmail.com, neil.armstrong@linaro.org, 
	linux@armlinux.org.uk, shawn.lin@rock-chips.com, david@ixit.cz, 
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260917_130245_328733_377C47D9 
X-CRM114-Status: GOOD (  24.06  )
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

PG5ldGRldi1ib3Qrc2FzaGlrb0BrZXJuZWwub3JnPiDkuo4yMDI25bm0OeaciDE45pel5ZGo5LqU
IDAyOjM45YaZ6YGT77yaCj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNo
aWtvIEFJIHJldmlldyBmb3VuZCAxIHBvdGVudGlhbAo+IGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+
Cj4gQ3JpdGljYWw6IDAgwrcgSGlnaDogMCDCtyBNZWRpdW06IDAgwrcgTG93OiAxCj4KPiAtIFtM
b3ddIGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jOjM4
MC0zODEgcmVhZHMKPiAgICdyb2NrY2hpcCxzZ21paS1tYWMtc2VsJyB3aXRoIGRldmljZV9wcm9w
ZXJ0eV9yZWFkX3UzMigpIGZvciBldmVyeeKApgo+Cj4gLS0KPgo+IHBoeTogcm9ja2NoaXA6IG5h
bmVuZy1jb21icGh5OiBhZGQgU0dNSUkgTUFDIHNlbGVjdGlvbiBmb3IgUkszNTY4Cj4KPiBUaGlz
IGFkZHMgYSAicm9ja2NoaXAsc2dtaWktbWFjLXNlbCIgRFQgcHJvcGVydHkgc28gdGhlIFJLMzU2
OCBTR01JSQo+IGludGVyZmFjZSBjYW4gYmUgcm91dGVkIHRvIEdNQUMwIG9yIEdNQUMxIHZpYSB0
aGUgUElQRV9HUkZfWFBDU19DT04wCj4gcGlwZV9zZ21paV9tYWNfc2VsIGJpdCwgZGVmYXVsdGlu
ZyB0byBHTUFDMSB0byBtYXRjaCB0aGUgaGFyZHdhcmUgcmVzZXQKPiB2YWx1ZS4KPgo+IExpbms6
IGh0dHBzOi8vZGwucmFkeGEuY29tL3JvY2szL2RvY3MvaHcvZGF0YXNoZWV0L1JvY2tjaGlwJTIw
UkszNTY4JTIwVFJNJTIwUGFydDElMjBWMS4xLTIwMjEwMzAxLnBkZiAoUGFnZSAyMjkpCj4KPiA+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNv
bWJwaHkuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBo
eS5jCj4gPiBpbmRleCA3ODQzMzU2YTRkZDQ3Li43Yjg2N2U3NTIwMDY0IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMKPiA+
ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5j
Cj4KPiBbIC4uLiBdCj4KPiA+IEBAIC0zNzUsNiArMzc3LDkgQEAgc3RhdGljIGludCByb2NrY2hp
cF9jb21icGh5X3BhcnNlX2R0KHN0cnVjdCBkZXZpY2UgKmRldiwgc3RydWN0IHJvY2tjaGlwX2Nv
bWJwaHkKPiA+Cj4gPiAgICAgICBwcml2LT5leHRfcmVmY2xrID0gZGV2aWNlX3Byb3BlcnR5X3By
ZXNlbnQoZGV2LCAicm9ja2NoaXAsZXh0LXJlZmNsayIpOwo+ID4KPiA+ICsgICAgIHByaXYtPnNn
bWlpX21hY19zZWwgPSAxOwo+ID4gKyAgICAgZGV2aWNlX3Byb3BlcnR5X3JlYWRfdTMyKGRldiwg
InJvY2tjaGlwLHNnbWlpLW1hYy1zZWwiLCAmcHJpdi0+c2dtaWlfbWFjX3NlbCk7Cj4gPiArCj4K
PiBbU2V2ZXJpdHk6IExvd10KPiBUaGlzIGlzbid0IGEgYnVnIGZvciBhbnkgc2NoZW1hLWNoZWNr
ZWQgZGV2aWNlIHRyZWUsIGJ1dCB3b3VsZCBpdCBiZSB3b3J0aAo+IHJlYWN0aW5nIHRvIHRoZSBy
ZXR1cm4gdmFsdWUgaGVyZT8KPgo+IFRoZSBiaW5kaW5nIHJlc3RyaWN0cyB0aGUgcHJvcGVydHkg
dG8gdHdvIHZhbHVlcyBhbmQgdG8gb25lIGNvbXBhdGlibGU6Cj4KPiAgIHJvY2tjaGlwLHNnbWlp
LW1hYy1zZWw6Cj4gICAgICRyZWY6IC9zY2hlbWFzL3R5cGVzLnlhbWwjL2RlZmluaXRpb25zL3Vp
bnQzMgo+ICAgICBlbnVtOiBbMCwgMV0KPiAgICAgZGVmYXVsdDogMQo+Cj4gICAuLi4KPiAgICAg
ICAgIHJvY2tjaGlwLHNnbWlpLW1hYy1zZWw6IHRydWUKPiAgICAgZWxzZToKPiAgICAgICBwcm9w
ZXJ0aWVzOgo+ICAgICAgICAgcm9ja2NoaXAsc2dtaWktbWFjLXNlbDogZmFsc2UKPgo+IEluIHJv
Y2tjaGlwX2NvbWJwaHlfcGFyc2VfZHQoKSB0aGUgcmVzdWx0IG9mIGRldmljZV9wcm9wZXJ0eV9y
ZWFkX3UzMigpIGlzCj4gZHJvcHBlZCwgc28gYSBtYWxmb3JtZWQgcHJvcGVydHkgKGZvciBleGFt
cGxlIGEgemVyby1sZW5ndGggb3Igd3Jvbmctc2l6ZWQKPiBjZWxsLCB3aGljaCByZXR1cm5zIC1F
Tk9EQVRBLy1FT1ZFUkZMT1cgYW5kIGxlYXZlcyB0aGUgb3V0cHV0IHVudG91Y2hlZCkKPiBlbmRz
IHVwIGluZGlzdGluZ3Vpc2hhYmxlIGZyb20gYW4gZXhwbGljaXQgcmVxdWVzdCBmb3IgR01BQzEu
Cj4KPiBUaGUgcmVhZCBhbHNvIGhhcHBlbnMgZm9yIGV2ZXJ5IGNvbXBhdGlibGUsIGluY2x1ZGlu
ZyByazM1MjgvcmszNTYyL3JrMzU3Ni8KPiByazM1ODggd2hlcmUgdGhlIGJpbmRpbmcgZGVjbGFy
ZXMgdGhlIHByb3BlcnR5IGludmFsaWQ7IHRoZXJlIHRoZSB2YWx1ZSBpcwo+IHBhcnNlZCBhbmQg
dGhlbiBuZXZlciB1c2VkLCBzaW5jZSBvbmx5IHJrMzU2OF9jb21icGh5X2NmZygpIGNvbnN1bWVz
IGl0Lgo+Cj4gWyAuLi4gXQo+Cj4gPiBAQCAtODczLDYgKzg3OCw4IEBAIHN0YXRpYyBpbnQgcmsz
NTY4X2NvbWJwaHlfY2ZnKHN0cnVjdCByb2NrY2hpcF9jb21icGh5X3ByaXYgKnByaXYpCj4gPiAg
ICAgICAgICAgICAgIGJyZWFrOwo+ID4KPiA+ICAgICAgIGNhc2UgUEhZX1RZUEVfU0dNSUk6Cj4g
PiArICAgICAgICAgICAgIHJvY2tjaGlwX2NvbWJwaHlfcGFyYW1fd3JpdGUocHJpdi0+cGlwZV9n
cmYsICZjZmctPnBpcGVfc2dtaWlfbWFjX3NlbCwKPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBwcml2LT5zZ21paV9tYWNfc2VsID4gMCk7Cj4KPiBbU2V2ZXJp
dHk6IExvd10KPiBTaG91bGQgb3V0LW9mLXJhbmdlIHZhbHVlcyBiZSByZWplY3RlZCByYXRoZXIg
dGhhbiBmb2xkZWQgaW50byBHTUFDMT8KPgo+IFRoZSAicHJpdi0+c2dtaWlfbWFjX3NlbCA+IDAi
IHRlc3QgY29sbGFwc2VzIHRoZSB1MzIgdG8gYSBib29sZWFuLCBzbyBhCj4gZGV2aWNlIHRyZWUg
d2l0aCByb2NrY2hpcCxzZ21paS1tYWMtc2VsID0gPDI+IChvciAweGZmZmZmZmZmKSB0aGF0IHdh
cyBuZXZlcgo+IHJ1biB0aHJvdWdoIGR0YnNfY2hlY2sgZ2V0cyB0aGUgR01BQzEgcm91dGluZyBh
bmQgcmszNTY4X2NvbWJwaHlfY2ZnKCkgc3RpbGwKPiByZXR1cm5zIHN1Y2Nlc3MsIHdpdGggbm90
aGluZyBsb2dnZWQuCj4KPiBBIHJhbmdlIGNoZWNrIGluIHJvY2tjaGlwX2NvbWJwaHlfcGFyc2Vf
ZHQoKSByZXR1cm5pbmcgLUVJTlZBTCwgb3IgYXQgbGVhc3QKPiBhIGRldl93YXJuKCksIHdvdWxk
IG1ha2Ugc3VjaCBhIGRldmljZSB0cmVlIHZpc2libGUgaW5zdGVhZCBvZiBzaWxlbnRseQo+IHNl
bGVjdGluZyB0aGUgZGVmYXVsdCByb3V0ZS4KClRoYW5rcyBmb3IgdGhlIHJldmlldy4KClRoZSBw
cm9wZXJ0eSBpcyB2YWxpZGF0ZWQgYnkgZHRic2NoZW1hIGZvciBhbGwgaW4tdHJlZSBkZXZpY2Ug
dHJlZXMsCndoaWNoIGlzIHdoZXJlIHRoZSBlbnVtIGFuZCB0aGUgY29tcGF0aWJsZSBnYXRpbmcg
YXJlIGVuZm9yY2VkLiBBCm1hbGZvcm1lZCBvciBvdXQtb2YtcmFuZ2UgdmFsdWUgY2FuIG9ubHkg
Y29tZSBmcm9tIGEgYm9vdGxvYWRlci1zdXBwbGllZApEVCBvciBhbiBvdmVybGF5IHRoYXQgYnlw
YXNzZWQgZHRic19jaGVjaywgd2hpY2ggaXMgYSB1c2VyIGVycm9yIHJhdGhlcgp0aGFuIHNvbWV0
aGluZyB0aGUgZHJpdmVyIG5lZWRzIHRvIGRlZmVuZCBhZ2FpbnN0LgoKVGhlIHJlYWQgcmVzdWx0
IGlzIGludGVudGlvbmFsbHkgaWdub3JlZDogdGhlIGRlZmF1bHQgb2YgMSBtYXRjaGVzIHRoZQpo
YXJkd2FyZSByZXNldCB2YWx1ZSwgc28gYSBtaXNzaW5nIHByb3BlcnR5IGFuZCBhbiBleHBsaWNp
dCAiMSIgYXJlCnNlbWFudGljYWxseSBpZGVudGljYWwgZm9yIHRoaXMgaGFyZHdhcmUuCgpUaGFu
a3MsCkNvaWEKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXBoeQo=
