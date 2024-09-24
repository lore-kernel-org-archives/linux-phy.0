Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25043CF9C6B
	for <linux-phy@archiver.kernel.org>; Tue, 24 Sep 2024 10:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xcMspkcmoVvRyc4UTOSgE6yqdq9WPwWlisOw6yXMaZ8=; b=w2LrtOpGIh3V2I
	sppq//WwmoEfl617rsX0quNwqyp7hoh5TcmlzRevG8KJ9Osb0qNmirXiVruuLTdsJfH6rQw9pPZlg
	adH4LqxBjKoQaPfGLfd8yMnJ1TSRHNmHNUJ856tc5pTEKYUDBEy1Ld+LIAdLG1R3Or6pc+EG8RIpg
	+9QplakWdlsa77Vd18PWNZQLma42zG1omNxgLi6f8Lr28h4qZn0RrpdOZSRCzRHQg4oPUvdSf3/zP
	Fx5GB3jtP1EjP9Birl8qv67pUznZ3DfqhPhSSdpsdKrID51qcmm6ulBrhqXpLENJQuJfIiraBMw7F
	R/73D9JEjhSCpmxuQ4VQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1st32v-000000022zi-3BAC;
	Tue, 24 Sep 2024 10:45:29 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1st207-00000001q4H-3o4v
	for linux-phy@lists.infradead.org;
	Tue, 24 Sep 2024 09:38:33 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2f752d9ab62so53695201fa.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Sep 2024 02:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727170710; x=1727775510; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/nisFp8RKAs/gX3FD0xOUvyQj0aIVN5DLGlMJinQ3Dk=;
        b=vdWusKv3z+gz60wEpxWtXn6PoH/x/NXgIwSlAy1CldEyVdxsEYS/slvSFi91ZadUwP
         TgXCPI40zvszdf0y2gT0XVuP/RcWj1YAroje4Ut2dRHsv8J40mfn+7VTnGd1tOMOpyir
         aFjz7iqdxZaL6Sl2ekdOweKTUvZVgCDDvNwAh+sSRvp6OxuQjxxTsn96jRn0hG4YZCKI
         maOYz9danA+zt6sMOTfMgZTyMei6xLkezK0CVOniw/0PwTKsbc+t/828lxNAQi7qFAlI
         epn6S8v1xUUJphzUxB/ANoan2UXj+Yg7MXY4iSY00WSdNxLjeUGJXVNWlYX+i7X7j/s9
         N8uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727170710; x=1727775510;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/nisFp8RKAs/gX3FD0xOUvyQj0aIVN5DLGlMJinQ3Dk=;
        b=L3ZNBNGKBMJbhKR+lO6wEUfAUTkulH6nDeCnHuOmsl4+KN/IIel1ziCActezyQESXA
         7usNNKxl4k6HChFCjy5/otpCD4RoqAAT4j+G/ggvBhrmrtqGEgXT9M+6z0vcYk7e953B
         9BczA2WSkJKcNcmS0kqmrp54eLPQNAA80yIshYWN4/rduoGiKAeXM0WC1pKbPYBwEMFh
         zHE9hoLGq69Z9Sz2FKTiV+IiGIj/Pp2fovzxKjHGdGjSyv565pojiSTK0SYMj0/iB/36
         9aw1+n4Sl/Gh+d5u8w10qKja9rmhkFfv6RTdG27Rn4uLA9Ez6/Bq9bqC1HaDhdnm7yCv
         lhpA==
X-Forwarded-Encrypted: i=1; AJvYcCWfg7d9xZ/JmxSa0EFLrBi7mNyqL8LAa2cbcGX6AjdiTiz5UHnNMc+D/oZeNT1l59FZSqGPxL3D/xM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7eE7nMzwu6GkBmQcWo6WM9usJFC93kVattJP4P6e5Aap4FKyu
	2oySjGASoGuhm0pgeB7/yE8nh20MYrpWA/7DJptoI87gjb5eEZwtL5PFn8oUNBU=
X-Google-Smtp-Source: AGHT+IEVkdo9IU3eIpJK0EZxoXqGXjm1n93E9m6udz7QEOiMd5oLT7l8JD5yFadH+lkhJgbpkNuuYA==
X-Received: by 2002:a2e:bea1:0:b0:2f7:4f58:4a9c with SMTP id 38308e7fff4ca-2f7cb2eda53mr79119231fa.16.1727170709926;
        Tue, 24 Sep 2024 02:38:29 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f8d28b5c15sm1627151fa.133.2024.09.24.02.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 02:38:29 -0700 (PDT)
Date: Tue, 24 Sep 2024 12:38:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <sandor.yu@nxp.com>
Cc: Maxime Ripard <mripard@kernel.org>, 
	"andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, "neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>, 
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, "airlied@gmail.com" <airlied@gmail.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, 
	"vkoul@kernel.org" <vkoul@kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>, 
	dl-linux-imx <linux-imx@nxp.com>, Oliver Brown <oliver.brown@nxp.com>, 
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>, "sam@ravnborg.org" <sam@ravnborg.org>
Subject: Re: [EXT] Re: [PATCH v16 4/8] drm: bridge: Cadence: Add MHDP8501
 DP/HDMI driver
Message-ID: <3z53w7kzwnsn3pg5elp5fbueid323t47yyhub67muidd6k47me@assca4bckdt5>
References: <cover.1719903904.git.Sandor.yu@nxp.com>
 <359914108b879e995d4a39de32a33310009f0fab.1719903904.git.Sandor.yu@nxp.com>
 <20240702-quartz-salamander-of-culture-eec264@houat>
 <PAXPR04MB94480AB0490BBF00D2BA17BBF4932@PAXPR04MB9448.eurprd04.prod.outlook.com>
 <20240903-gay-capable-hound-3cbef2@houat>
 <PAXPR04MB9448EF507CB5C18A43239A80F49E2@PAXPR04MB9448.eurprd04.prod.outlook.com>
 <20240912-zippy-mongoose-of-domination-2ebc1d@houat>
 <PAXPR04MB94484D86A71A7527ADD42EA4F4652@PAXPR04MB9448.eurprd04.prod.outlook.com>
 <CAA8EJpphegHmBFgH1-n9PEkrr-Ys+HCvekKGNYRp=xQxgmC0Cw@mail.gmail.com>
 <PAXPR04MB94481627922756E892C37B7DF4682@PAXPR04MB9448.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <PAXPR04MB94481627922756E892C37B7DF4682@PAXPR04MB9448.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240924_023832_002358_3EE403E0 
X-CRM114-Status: GOOD (  60.40  )
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

T24gVHVlLCBTZXAgMjQsIDIwMjQgYXQgMDc6MDQ6NThBTSBHTVQsIFNhbmRvciBZdSB3cm90ZToK
PiAgCj4gPiAKPiA+IE9uIEZyaSwgMTMgU2VwdCAyMDI0IGF0IDExOjQ2LCBTYW5kb3IgWXUgPHNh
bmRvci55dUBueHAuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4KPiA+ID4gPiBTdWJqZWN0OiBSZTog
W0VYVF0gUmU6IFtQQVRDSCB2MTYgNC84XSBkcm06IGJyaWRnZTogQ2FkZW5jZTogQWRkCj4gPiA+
ID4gTUhEUDg1MDEgRFAvSERNSSBkcml2ZXIKPiA+ID4gPgo+ID4gPiA+IE9uIEZyaSwgU2VwIDA2
LCAyMDI0IGF0IDAyOjUwOjA4QU0gR01ULCBTYW5kb3IgWXUgd3JvdGU6Cj4gPiA+ID4gPiA+IE9u
IFR1ZSwgU2VwIDAzLCAyMDI0IGF0IDA2OjA3OjI1QU0gR01ULCBTYW5kb3IgWXUgd3JvdGU6Cj4g
PiA+ID4gPiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+ID4gPiA+ID4gPiA+ID4g
RnJvbTogZHJpLWRldmVsIDxkcmktZGV2ZWwtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+
IE9uCj4gPiA+ID4gPiA+ID4gPiBCZWhhbGYgT2YgTWF4aW1lIFJpcGFyZAo+ID4gPiA+ID4gPiA+
ID4gU2VudDogMjAyNOW5tDfmnIgy5pelIDIxOjI1Cj4gPiA+ID4gPiA+ID4gPiBUbzogU2FuZG9y
IFl1IDxzYW5kb3IueXVAbnhwLmNvbT4KPiA+ID4gPiA+ID4gPiA+IENjOiBkbWl0cnkuYmFyeXNo
a292QGxpbmFyby5vcmc7IGFuZHJ6ZWouaGFqZGFAaW50ZWwuY29tOwo+ID4gPiA+ID4gPiA+ID4g
bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZzsgTGF1cmVudCBQaW5jaGFydAo+ID4gPiA+ID4gPiA+
ID4gPGxhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT47IGpvbmFzQGt3aWJvby5zZTsK
PiA+ID4gPiA+ID4gPiA+IGplcm5lai5za3JhYmVjQGdtYWlsLmNvbTsgYWlybGllZEBnbWFpbC5j
b207Cj4gPiA+ID4gPiA+ID4gPiBkYW5pZWxAZmZ3bGwuY2g7Cj4gPiA+ID4gPiA+ID4gPiByb2Jo
K2R0QGtlcm5lbC5vcmc7IGtyenlzenRvZi5rb3psb3dza2krZHRAbGluYXJvLm9yZzsKPiA+ID4g
PiA+ID4gPiA+IHNoYXduZ3VvQGtlcm5lbC5vcmc7IHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU7Cj4g
PiA+ID4gZmVzdGV2YW1AZ21haWwuY29tOwo+ID4gPiA+ID4gPiA+ID4gdmtvdWxAa2VybmVsLm9y
ZzsgZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsKPiA+ID4gPiA+ID4gPiA+IGRldmlj
ZXRyZWVAdmdlci5rZXJuZWwub3JnOwo+ID4gPiA+ID4gPiA+ID4gbGludXgtYXJtLWtlcm5lbEBs
aXN0cy5pbmZyYWRlYWQub3JnOwo+ID4gPiA+ID4gPiA+ID4gbGludXgta2VybmVsQHZnZXIua2Vy
bmVsLm9yZzsgbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmc7Cj4gPiA+ID4gPiA+ID4gPiBr
ZXJuZWxAcGVuZ3V0cm9uaXguZGU7IGRsLWxpbnV4LWlteCA8bGludXgtaW14QG54cC5jb20+Owo+
ID4gPiA+ID4gPiA+ID4gT2xpdmVyIEJyb3duIDxvbGl2ZXIuYnJvd25AbnhwLmNvbT47Cj4gPiA+
ID4gPiA+ID4gPiBhbGV4YW5kZXIuc3RlaW5AZXcudHEtZ3JvdXAuY29tOyBzYW1AcmF2bmJvcmcu
b3JnCj4gPiA+ID4gPiA+ID4gPiBTdWJqZWN0OiBbRVhUXSBSZTogW1BBVENIIHYxNiA0LzhdIGRy
bTogYnJpZGdlOiBDYWRlbmNlOiBBZGQKPiA+ID4gPiA+ID4gPiA+IE1IRFA4NTAxIERQL0hETUkg
ZHJpdmVyCj4gPiA+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gSGksCj4gPiA+ID4gPiA+ID4g
Pgo+ID4gPiA+ID4gPiA+ID4gVGhlcmUncyBzdGlsbCB0aGUgc2NyYW1ibGVyIGlzc3VlIHdlIGRp
c2N1c3NlZCBvbiB2MTUsIGJ1dCBJCj4gPiA+ID4gPiA+ID4gPiBoYXZlIHNvbWUgbW9yZSBjb21t
ZW50cy4KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBPbiBUdWUsIEp1bCAwMiwgMjAy
NCBhdCAwODoyMjozNlBNIEdNVCwgU2FuZG9yIFl1IHdyb3RlOgo+ID4gPiA+ID4gPiA+ID4gPiAr
ZW51bSBkcm1fY29ubmVjdG9yX3N0YXR1cyBjZG5zX21oZHA4NTAxX2RldGVjdChzdHJ1Y3QKPiA+
ID4gPiA+ID4gPiA+ID4gK2NkbnNfbWhkcDg1MDFfZGV2aWNlICptaGRwKSB7Cj4gPiA+ID4gPiA+
ID4gPiA+ICsgICB1OCBocGQgPSAweGY7Cj4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4g
PiA+ID4gKyAgIGhwZCA9IGNkbnNfbWhkcDg1MDFfcmVhZF9ocGQobWhkcCk7Cj4gPiA+ID4gPiA+
ID4gPiA+ICsgICBpZiAoaHBkID09IDEpCj4gPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgIHJl
dHVybiBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZDsKPiA+ID4gPiA+ID4gPiA+ID4gKyAgIGVs
c2UgaWYgKGhwZCA9PSAwKQo+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICByZXR1cm4gY29u
bmVjdG9yX3N0YXR1c19kaXNjb25uZWN0ZWQ7Cj4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+
ID4gPiA+ID4gKyAgIGRldl93YXJuKG1oZHAtPmRldiwgIlVua25vd24gY2FibGUgc3RhdHVzLCBo
ZHA9JXVcbiIsCj4gPiA+ID4gaHBkKTsKPiA+ID4gPiA+ID4gPiA+ID4gKyAgIHJldHVybiBjb25u
ZWN0b3Jfc3RhdHVzX3Vua25vd247IH0KPiA+ID4gPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4gPiA+
ID4gPiArc3RhdGljIHZvaWQgaG90cGx1Z193b3JrX2Z1bmMoc3RydWN0IHdvcmtfc3RydWN0ICp3
b3JrKSB7Cj4gPiA+ID4gPiA+ID4gPiA+ICsgICBzdHJ1Y3QgY2Ruc19taGRwODUwMV9kZXZpY2Ug
Km1oZHAgPSBjb250YWluZXJfb2Yod29yaywKPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdAo+ID4gY2Ruc19taGRw
ODUwMV9kZXZpY2UsCj4gPiA+ID4gPiA+ID4gPiA+ICsKPiA+IGhvdHBsdWdfd29yay53b3JrKTsK
PiA+ID4gPiA+ID4gPiA+ID4gKyAgIGVudW0gZHJtX2Nvbm5lY3Rvcl9zdGF0dXMgc3RhdHVzID0K
PiA+ID4gPiA+ID4gY2Ruc19taGRwODUwMV9kZXRlY3QobWhkcCk7Cj4gPiA+ID4gPiA+ID4gPiA+
ICsKPiA+ID4gPiA+ID4gPiA+ID4gKyAgIGRybV9icmlkZ2VfaHBkX25vdGlmeSgmbWhkcC0+YnJp
ZGdlLCBzdGF0dXMpOwo+ID4gPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiA+ICsgICBp
ZiAoc3RhdHVzID09IGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkKSB7Cj4gPiA+ID4gPiA+ID4g
PiA+ICsgICAgICAgICAgIC8qIENhYmxlIGNvbm5lY3RlZCAgKi8KPiA+ID4gPiA+ID4gPiA+ID4g
KyAgICAgICAgICAgRFJNX0lORk8oIkhETUkvRFAgQ2FibGUgUGx1ZyBJblxuIik7Cj4gPiA+ID4g
PiA+ID4gPiA+ICsgICAgICAgICAgIGVuYWJsZV9pcnEobWhkcC0+aXJxW0lSUV9PVVRdKTsKPiA+
ID4gPiA+ID4gPiA+ID4gKyAgIH0gZWxzZSBpZiAoc3RhdHVzID09IGNvbm5lY3Rvcl9zdGF0dXNf
ZGlzY29ubmVjdGVkKSB7Cj4gPiA+ID4gPiA+ID4gPiA+ICsgICAgICAgICAgIC8qIENhYmxlIERp
c2Nvbm5lY3RlZCAgKi8KPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgRFJNX0lORk8oIkhE
TUkvRFAgQ2FibGUgUGx1ZyBPdXRcbiIpOwo+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICBl
bmFibGVfaXJxKG1oZHAtPmlycVtJUlFfSU5dKTsKPiA+ID4gPiA+ID4gPiA+ID4gKyAgIH0KPiA+
ID4gPiA+ID4gPiA+ID4gK30KPiA+ID4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBZb3Ugc2hv
dWxkbid0IHBsYXkgd2l0aCB0aGUgaW50ZXJydXB0IGJlaW5nIGVuYWJsZWQgaGVyZToKPiA+ID4g
PiA+ID4gPiA+IGhvdHBsdWcgaW50ZXJydXB0cyBzaG91bGQgYWx3YXlzIGVuYWJsZWQuCj4gPiA+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiA+ID4gSWYgeW91IGNhbid0IGZvciBzb21lIHJlYXNvbiwg
dGhlIHJlYXNvbiBzaG91bGQgYmUKPiA+ID4gPiA+ID4gPiA+IGRvY3VtZW50ZWQgaW4geW91cgo+
ID4gPiA+ID4gPiBkcml2ZXIuCj4gPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gPiBpTVg4TVEgaGF2
ZSB0d28gSFBEIGludGVycnVwdGVycywgb25lIGZvciBwbHVnb3V0IGFuZCB0aGUKPiA+ID4gPiA+
ID4gPiBvdGhlciBmb3IgcGx1Z2luLCBiZWNhdXNlIHRoZXkgY291bGQgbm90IGJlIG1hc2tlZCwg
c28gd2UgaGF2ZQo+ID4gPiA+ID4gPiA+IHRvIGVuYWJsZSBvbmUgYW5kCj4gPiA+ID4gPiA+IGRp
c2FibGUgdGhlIG90aGVyLgo+ID4gPiA+ID4gPiA+IEkgd2lsbCBhZGQgbW9yZSBjb21tZW50cyBo
ZXJlLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBSaWdodCwgYnV0IHdoeSBkbyB5b3UgbmVlZCB0
byBlbmFibGUgYW5kIGRpc2FibGUgdGhlbT8gRG8geW91Cj4gPiA+ID4gPiA+IGdldCBzcHVyaW91
cyBpbnRlcnJ1cHRzPwo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoZXkgZG9uJ3QgaGF2ZSBzdGF0dXMg
cmVnaXN0ZXJzIGFuZCBjYW5ub3QgYmUgbWFza2VkLiBJZiB0aGV5IGFyZQo+ID4gPiA+ID4gbm90
IGRpc2FibGVkLCB0aGV5IHdpbGwgY29udGludW91c2x5IGdlbmVyYXRlIGludGVycnVwdHMuCj4g
PiA+ID4gPiBUaGVyZWZvcmUsIEkgaGF2ZSB0bwo+ID4gPiA+IGRpc2FibGUgb25lIGFuZCBlbmFi
bGUgdGhlIG90aGVyLgo+ID4gPiA+Cj4gPiA+ID4gU29ycnksIEkgc3RpbGwgZG9uJ3QgZ2V0IGl0
LiBIb3cgY2FuIGl0IGJlIHVzZWZ1bCB0byBkZXRlY3QgaG90cGx1Zwo+ID4gPiA+IGludGVycnVw
dHMgaWYgaXQgY29uc3RhbnRseSBzZW5kcyBzcHVyaW91cyBpbnRlcnJ1cHRzIHdoZW4gaXQncyBl
bmFibGVkPwo+ID4gPgo+ID4gPiBZZXMsIHRoaXMgaW50ZXJydXB0IGlzIGRpZmZlcmVudCBmcm9t
IGEgbm9ybWFsIG9uZTsgaXQncyBsaWtlbHkgYSBkZXNpZ24gZmxhdy4KPiA+ID4gRm9yIGluc3Rh
bmNlLCB0aGUgcGx1Z2luIGludGVycnVwdCBpcyBjb250aW51b3VzbHkgZ2VuZXJhdGVkIGFzIGxv
bmcKPiA+ID4gYXMgdGhlIGNhYmxlIGlzIHBsdWdnZWQgaW4sIG9ubHkgc3RvcHBpbmcgd2hlbiB0
aGUgY2FibGUgaXMgdW5wbHVnZ2VkLgo+ID4gPiBUaGF0J3Mgd2h5IHR3byBpbnRlcnJ1cHRzIGFy
ZSB1c2VkIHRvIGRldGVjdCBjYWJsZSBwbHVnb3V0IGFuZCBwbHVnaW4KPiA+IHNlcGFyYXRlbHku
Cj4gPiA+IElmIGludGVycnVwdHMgYXJlbid0IHVzZWQsIHRoZSBvbmx5IG9wdGlvbiBpcyBwb2xs
aW5nLgo+ID4gCj4gPiBJIHRoaW5rIEkndmUgc2VlbiBzdWNoIHN0cmFuZ2UgZGVzaWduIG9uIG90
aGVyIHBsYXRmb3JtcywgbGV2ZWwgaW50ZXJydXB0IGZvciBIUEQsCj4gPiB3aGljaCBuZWVkcyB0
byBiZSBkaXNhYmxlZCB2aWEgZGlzYWJsZV9pcnEoKS4KPiA+IAo+ID4gPgo+ID4gPiA+Cj4gPiA+
ID4gPiA+ID4gPiA+ICsgICAvKiBNYWlsYm94IHByb3RlY3QgZm9yIEhETUkgUEhZIGFjY2VzcyAq
Lwo+ID4gPiA+ID4gPiA+ID4gPiArICAgbXV0ZXhfbG9jaygmbWhkcC0+bWJveF9tdXRleCk7Cj4g
PiA+ID4gPiA+ID4gPiA+ICsgICByZXQgPSBwaHlfaW5pdChtaGRwLT5waHkpOwo+ID4gPiA+ID4g
PiA+ID4gPiArICAgbXV0ZXhfdW5sb2NrKCZtaGRwLT5tYm94X211dGV4KTsKPiA+ID4gPiA+ID4g
PiA+ID4gKyAgIGlmIChyZXQpIHsKPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAgICAgICAgZGV2X2Vy
cihkZXYsICJGYWlsZWQgdG8gaW5pdGlhbGl6ZSBQSFk6ICVkXG4iLCByZXQpOwo+ID4gPiA+ID4g
PiA+ID4gPiArICAgICAgICAgICBnb3RvIGNsa19kaXNhYmxlOwo+ID4gPiA+ID4gPiA+ID4gPiAr
ICAgfQo+ID4gPiA+ID4gPiA+ID4gPiArCj4gPiA+ID4gPiA+ID4gPiA+ICsgICAvKiBNYWlsYm94
IHByb3RlY3QgZm9yIEhETUkgUEhZIGFjY2VzcyAqLwo+ID4gPiA+ID4gPiA+ID4gPiArICAgbXV0
ZXhfbG9jaygmbWhkcC0+bWJveF9tdXRleCk7Cj4gPiA+ID4gPiA+ID4gPiA+ICsgICByZXQgPSBw
aHlfc2V0X21vZGUobWhkcC0+cGh5LCBwaHlfbW9kZSk7Cj4gPiA+ID4gPiA+ID4gPiA+ICsgICBt
dXRleF91bmxvY2soJm1oZHAtPm1ib3hfbXV0ZXgpOwo+ID4gPiA+ID4gPiA+ID4gPiArICAgaWYg
KHJldCkgewo+ID4gPiA+ID4gPiA+ID4gPiArICAgICAgICAgICBkZXZfZXJyKGRldiwgIkZhaWxl
ZCB0byBjb25maWd1cmUgUEhZOiAlZFxuIiwgcmV0KTsKPiA+ID4gPiA+ID4gPiA+ID4gKyAgICAg
ICAgICAgZ290byBjbGtfZGlzYWJsZTsKPiA+ID4gPiA+ID4gPiA+ID4gKyAgIH0KPiA+ID4gPiA+
ID4gPiA+Cj4gPiA+ID4gPiA+ID4gPiBXaHkgZG8geW91IG5lZWQgYSBzaGFyZWQgbXV0ZXggYmV0
d2VlbiB0aGUgcGh5IGFuZCBIRE1JCj4gPiA+ID4gY29udHJvbGxlcj8KPiA+ID4gPiA+ID4gPgo+
ID4gPiA+ID4gPiA+IEJvdGggUEhZIGFuZCBIRE1JIGNvbnRyb2xsZXIgY291bGQgYWNjZXNzIHRv
IHRoZSBIRE1JIGZpcm13YXJlCj4gPiA+ID4gPiA+ID4gYnkgbWFpbGJveCwgU28gYWRkIG11dGV4
IHRvIGF2b2lkIHJhY2UgY29uZGl0aW9uLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBUaGF0IHNo
b3VsZCBiZSBoYW5kbGVkIGF0IGVpdGhlciB0aGUgcGh5IG9yIG1haWxib3ggbGV2ZWwsIG5vdAo+
ID4gPiA+ID4gPiBpbiB5b3VyIGhkbWkgZHJpdmVyLgo+ID4gPiA+ID4KPiA+ID4gPiA+IEluIGJv
dGggSERNSSBkcml2ZXIgYW5kIFBIWSBkcml2ZXIsIGV2ZXJ5IG1haWxib3ggYWNjZXNzIGhhZAo+
ID4gPiA+ID4gcHJvdGVjdGVkIGJ5IGl0cyBvd25zIG11dGV4LiBIb3dldmVyLCB0aGlzIG11dGV4
IGNhbiBvbmx5IHByb3RlY3QKPiA+ID4gPiA+IGVhY2ggbWFpbGJveCBhY2Nlc3Mgd2l0aGluIHRo
ZWlyIHJlc3BlY3RpdmUgZHJpdmVycywgYW5kIGl0IGNhbm5vdAo+ID4gPiA+ID4gcHJvdmlkZSBw
cm90ZWN0aW9uIGZvciBhY2Nlc3MgYmV0d2VlbiB0aGUgSERNSSBhbmQgUEhZIGRyaXZlcnMuCj4g
PiA+ID4gPgo+ID4gPiA+ID4gVGhlIFBIWSBkcml2ZXIgb25seSBwcm92aWRlcyB0d28gQVBJIGZ1
bmN0aW9ucywgYW5kIHRoZXNlCj4gPiA+ID4gPiBmdW5jdGlvbnMgYXJlIG9ubHkgY2FsbGVkIGlu
IHRoZSBIRE1JIGRyaXZlci4gVGhlcmVmb3JlLCB3aGVuCj4gPiA+ID4gPiBhY2Nlc3NpbmcgdGhl
c2UgZnVuY3Rpb25zLCB3ZSB1c2UgYSBtdXRleCB0byBwcm90ZWN0IHRoZW0uIFRoaXMKPiA+ID4g
PiA+IGVuc3VyZXMgdGhhdCBtYWlsYm94IGFjY2VzcyBpcyBwcm90ZWN0ZWQgYWNyb3NzIGRpZmZl
cmVudCBQSFkgYW5kIEhETUkKPiA+IGRyaXZlcnMuCj4gPiA+ID4KPiA+ID4gPiBJdCdzIHJlYWxs
eSBhYm91dCBhYnN0cmFjdGlvbi4gWW91J3JlIHVzaW5nIGEgcHVibGljbHkgZGVmaW5lZCBBUEks
Cj4gPiA+ID4gYW5kIGNoYW5nZSB0aGUgc2VtYW50aWNzIGZvciB5b3VyIGRyaXZlciBvbmx5LCBh
bmQgdGhhdCdzIG5vdCBvay4KPiA+ID4gPgo+ID4gPiA+IFdoeSBjYW4ndCB0aGUgbWFpbGJveCBk
cml2ZXIgaXRzZWxmIHNlcmlhbGl6ZSB0aGUgYWNjZXNzZXMgZnJvbSBhbnkKPiA+ID4gPiB1c2Vy
LCBIRE1JIGFuZCBQSFkgZHJpdmVycyBpbmNsdWRlZD8KPiA+ID4gPgo+ID4gPgo+ID4gPiBJbiB0
aGUgY3VycmVudCBjb2RlIGltcGxlbWVudGF0aW9uLCBjZG5zLW1oZHAtaGVscGVyLmMgaXNuJ3Qg
YSBzdGFuZGFsb25lCj4gPiBkcml2ZXIgYnV0IHJhdGhlciBhIGxpYnJhcnkuCj4gPiA+IEl0IHBy
b3ZpZGVzIGZ1bmRhbWVudGFsIG1haWxib3ggYWNjZXNzIGZ1bmN0aW9ucyBhbmQgYmFzaWMgcmVn
aXN0ZXIKPiA+IHJlYWQvd3JpdGUgb3BlcmF0aW9ucyB0aGF0IHJlbHkgb24gdGhlIG1haWxib3gu
Cj4gPiA+IFRoZXNlIGZ1bmN0aW9ucyBhcmUgaGlnaGx5IHJldXNhYmxlIGFjcm9zcyBNSERQODUw
MSBhbmQgTUhEUDg1NDYgYW5kCj4gPiBjYW4gYmUgbGV2ZXJhZ2VkIGJ5IGZ1dHVyZSBNSERQIHZl
cnNpb25zLgo+ID4gPgo+ID4gPiBIb3dldmVyLCBtb3N0IE1IRFAgZmlybXdhcmUgaW50ZXJhY3Rp
b25zIGludm9sdmUgYSBzZXF1ZW5jZSBvZiBtYWlsYm94Cj4gPiBhY2Nlc3NlcywgaW5jbHVkaW5n
IHNlbmRpbmcgY29tbWFuZHMgYW5kIHJlY2VpdmluZyBmaXJtd2FyZSByZXNwb25zZXMuCj4gPiA+
IFRoZXNlIGNvbW1hbmRzIGNvbnN0aXR1dGUgYSBzaWduaWZpY2FudCBwb3J0aW9uIG9mIGFsbCBm
aXJtd2FyZSBpbnRlcmFjdGlvbnMsCj4gPiBlbmNvbXBhc3Npbmcgb3BlcmF0aW9ucyBsaWtlIEVE
SUQgcmVhZGluZyBhbmQgRFAgbGluayB0cmFpbmluZy4KPiA+ID4gVW5mb3J0dW5hdGVseSwgdGhl
c2UgY29tbWFuZHMgY2Fubm90IGJlIHJldXNlZCBiZXR3ZWVuIE1IRFA4NTAxIGFuZAo+ID4gTUhE
UDg1NDYuCj4gPiA+Cj4gPiA+IENyZWF0aW5nIGEgZGVkaWNhdGVkIG1haWxib3ggZHJpdmVyIHdp
dGggaXRzIG93biBtdXRleCB3b3VsZCBlZmZlY3RpdmVseQo+ID4gYWRkcmVzcyByYWNlIGNvbmRp
dGlvbnMuCj4gPiA+IEhvd2V2ZXIsIHRoaXMgd291bGQgbmVjZXNzaXRhdGUgcmVsb2NhdGluZyBh
bGwgbWFpbGJveC1yZWxhdGVkIGZ1bmN0aW9ucyB0bwo+ID4gdGhpcyBkcml2ZXIuCj4gPiA+IElu
Y2x1ZGluZyB0aGVzZSBub24tcmV1c2FibGUgZnVuY3Rpb25zIHdvdWxkIGRlZmVhdCB0aGUgcHVy
cG9zZSBvZiBjb2RlCj4gPiByZXVzZS4KPiA+ID4KPiA+ID4gVG8gc3RyaWtlIGEgYmFsYW5jZSBi
ZXR3ZWVuIGNvZGUgcmV1c2FiaWxpdHkgYW5kIHJhY2UgY29uZGl0aW9uIG1pdGlnYXRpb24sCj4g
PiBhZGRpbmcgbXV0ZXhlcyB0byBQSFkgYWNjZXNzIGZ1bmN0aW9ucyBzZWVtcyBsaWtlIGEgcmVh
c29uYWJsZSBzb2x1dGlvbi4KPiA+IAo+ID4gWW91IHNlZW0gdG8gaGF2ZSB0d28ga2luZHMgb2Yg
c2NlbmFyaW9zIHdoZW4gdGFsa2luZyB0byBNSERQOiBqdXN0Cj4gPiBjZG5zX21oZHBfbWFpbGJv
eF9zZW5kKCksIG5vIHJlc3BvbnNlIG5lZWRlZCBhbmQgdGhlbiB0aGUKPiA+IGNkbnNfbWhkcF9t
YWlsYm94X3NlbmQoKSAvICBjZG5zX21oZHBfbWFpbGJveF9yZWN2X2hlYWRlcigpIC8KPiA+IGNk
bnNfbWhkcF9tYWlsYm94X3JlY3ZfZGF0YSgpIHNlcXVlbmNlLiBFeHRyYWN0IHRob3NlICsgdGhl
IG11dGV4IGFjY2Vzcwo+ID4gdG8gc2VwYXJhdGUgZnVuY3Rpb25zLCBhZGQgYSBtdXRleCB0byB0
aG9zZSBzZXF1ZW5jZXMgYW5kIHVzZSB0aGVtIGFzIGEKPiA+IGhpZ2gtbGV2ZWwgQVBJIGZvciB5
b3VyIEhETUkgYW5kIFBIWSBkcml2ZXJzLgo+ID4gCj4gPiBBZGRpbmcgbXV0ZXhlcyBhcm91bmQg
cGh5X2ZvbygpIGNhbGxzIGRvZXNuJ3QgbG9vayBsaWtlIGEgcHJvcGVyIHNvbHV0aW9uIF9hdF8K
PiA+IF9hbGxfLgo+ID4gCj4gQmVjYXVzZSB0aGUgc2VxdWVuY2UgY2Ruc19taGRwX21haWxib3hf
c2VuZCgpIC8gY2Ruc19taGRwX21haWxib3hfcmVjdl9oZWFkZXIoKSAvIGNkbnNfbWhkcF9tYWls
Ym94X3JlY3ZfZGF0YSgpIGNhbm5vdCBiZSByZXVzZWQgYnkgZGlmZmVyZW50IGRyaXZlcnMsIAo+
IGl0J3Mgbm90IHN1aXRhYmxlIHRvIGFic3RyYWN0IHRoZW0gaW50byBhIHNlcGFyYXRlIGZ1bmN0
aW9uLgoKV2h5IGlzIGl0IHNvPyBJbiB0aGUgZW5kLCBldmVuIGlmIG9uZSBkcml2ZXIgdXNlcyBp
dCBhbmQgYW5vdGhlciBkcml2ZXIKdXNlcyBvdGhlciBmdW5jdGlvbnMgKHdoaWxlIGhvbGRpbmcg
dGhlIG11dGV4KSwgcGxlYXNlIG1vdmUgZ2VuZXJpYwp2ZXJzaW9ucyBvZiB0aG9zZSBmdW5jdGlv
bnMgdG8geW91ciBoZWxwZXIgY29kZS4gSXQgc2hvdWxkIGFic3RyYWN0Cl90eXBlc18gb2YgaGFy
ZHdhcmUgYWNjZXNzIChhbmQgc2VuZC9yZWN2X2hlYWRlci9yZWN2X2RhdGEgaXMgc3VjaCBhbgph
YnN0cmFjdGlvbikuCgo+IEkndmUgbm90aWNlZCBzb21lIExpbnV4IGtlcm5lbCBkcml2ZXJzIHVz
ZSBnbG9iYWwgbXV0ZXhlcywgd2hpY2ggY2FuIHNvbHZlIHRoZSBjdXJyZW50IHJhY2UgY29uZGl0
aW9ucyBwcm9ibGVtLiAKPiBJJ2xsIGltcGxlbWVudCB0aGlzIGluIHRoZSBuZXh0IHZlcnNpb24u
CgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
