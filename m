Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 133E8C5AD49
	for <linux-phy@archiver.kernel.org>; Thu, 29 May 2025 08:59:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/xCH8j0kOSL4O+S4n6Wsu13l73YXAfs+z4WiwnWfso=; b=orkKSqdhHvibRc
	xE28RTtxWnuVZKYSlhQgYqNOus6t/QLwx11bqA97BwVmDDNMmhGfNgYTsVaagt/2fGgDqYrT3I3uU
	nBG4xcHR71/B9mTjc6EthU7xbTvAyPiwtwUhnaM/5XJril0A287q+wu6tVCOvA3HsmLrdqu6PL1er
	XGDkTVbTo4cQ11gknp/0FcHTt+7UTHsuWeN27Za7dO/XiTZ8Ffo/8es/PxErG3ykr/hCReYqcLIeS
	Gg+kMxuBPyqkxeP9wGSsnBGL6biI3B8IpHO/4oZQWGKfcXLumg+lG2DL4Cz1ml0x8pw5Hx2Xs74Tw
	bi/Za6yXyXURz4DW+KDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKZ6c-0000000FJJg-3Dz3;
	Thu, 29 May 2025 08:59:18 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKYrn-0000000FGn5-2OfQ
	for linux-phy@lists.infradead.org;
	Thu, 29 May 2025 08:44:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=oldschoolsolutions.biz; s=s1-ionos; t=1748508210; x=1749113010;
	i=jens.glathe@oldschoolsolutions.biz;
	bh=p9iY87Tn+tdgIRI8MAcUFWvBFjvzjQEGWBKTwolw1gc=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=OcJftZtK+nHV1u0P2Vhlh88yJlgZo0IhawOXcOc8hTzUC3bPNAq4hSj+mHOgrAPI
	 URsdPN+5ECyITBzVAMp4offmX/lyXBM4hK0ApVFz5h4qQVUbVG2Me8OhSmSe4GDYL
	 TsC3uxTB07hAYYlisJJASeyYu2+gygnbiDi4qqZUKEWVqmP2uIrk5ofILzEODtPoz
	 riJKnvpe8vAbt51R0vbs5K+iqlcHDbl7SDG64FFw0HT19/QZQ1+YyCialI6/WL/OK
	 7xTTyKr53+UJO/smNxBO48Gke+tu/JYwSWCZ3J7ooVytkUGFDpZkchrXTLfk0oRZG
	 Ar3Prthu48c3aNLmig==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from [192.168.0.174] ([91.64.235.193]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MP2zs-1uWhQL3L4e-00Szli; Thu, 29 May 2025 10:43:29 +0200
Message-ID: <d435fda2-1471-4561-b7a0-ee831a8f0909@oldschoolsolutions.biz>
Date: Thu, 29 May 2025 10:43:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
Content-Language: en-US
From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
X-Provags-ID: V03:K1:MrVMQ/XIXugB6wRhCU142jnMP94sqyQemvGnGRMNuI/iqNHY7hf
 Sp9k6NC9K5C/elCYxx5ZQBdscCV/0ZDm7MWdEi/IqFhmtUKkX0HUtUzo6YbDiUoJiWu2/1o
 EJT0gl1ra6fWb6wJycJAuzBnBwwJsYGHQtitcdLlc8CT2GfvyxEzhqvyWbL6Qa2vFHguzji
 A0kz0+Kp4IUrZVomMhclA==
UI-OutboundReport: notjunk:1;M01:P0:e8jvBCz9gRE=;l5f6nFFSsX9mpHIXambMyr8GDbI
 oelbdFuCPHjESQFxRxEPgZvK0J29F9JJX4IWnjUmnYYGqr7lGjHrL3QPVMVhNclP5bwj1IBNZ
 8fA9E+ama8qOY4fDOb7Tp1yA39+h/d8b5YOGWmZQYC5fXq+s03M42TN69HltpjzIqnomq9ezJ
 VRVbs/jSzFjdwMoG2IkcVfE4OWCX+KvJeB2hUXsef4XV8AMiefAMTJnFHdVe74cnvZvFA4ICT
 HOxb2Hd4XU19ofZ31CMYKKjihWeg1Gyg46KkqrpeEcfVvvtgQyyKy7w+aCODm3kQ6VS5iejlR
 uEUc0SSfUHDuitpOB5E/qGg23ItKGrSH/eDR69NlfdbBxuLCC0T36U8dVXpyytUOrxVz9mpyb
 hBMgqEjkjGvSDwny9VILKtLKfSaHZDxbJGJhiqrA68IlyOJ8wRJP859kyumQb+7k/E4R/Mdcy
 Wn6WrYTLV710nb5FQi9EQnjNyhKPUF4rwZzD68B0hU5ZyX8em9ts8Jn6UYidMUzyeKl0BxO2i
 vcQ45dixUgUZYwWXNu7Zuudw7QK72q7nbva8E0G+pxqSs35xv2XR2BzpiT6ZxvfCiEAS6Ebf8
 uI4Oh21zwmdOttlwoPHh5ubSLy0Khmb0jai2akwRUPOlJ2eBrKR2zLU3S2SLwBNKsw6CM5csk
 1W7j98wIxXiaJXkrZZvNW3prQ4UanNqhAzWLJB1qg8x6qj8qZHVHJ4afBmh4xvfr+MzNT5VCK
 1IAsykhv4XB7SJaI6FZq06e2/AK51cR+1BRtbN7Dtb7k0RCtQydT32jhz2zelks7cK7mfo3j2
 cO/HWZsvf5ZmivXeVMuPQ6F6MRwUaJenkBZcWinhmE6AD9yW9wBnMCQ8MzsgCAKXGDAR1oNzC
 mw17mhog3Vhw7XtBZgXWctESreSWM7fwOJnnbqtBj5WHca7TTgBbMXuf/lN/msPcmMQPoaUTd
 c0flJRcRCm/DiHnoynorVcrKZtNlfnTdkTOXO4nGtTLPDQncrpbURDDrbcLJTPZ7YCHMZCgk9
 IhNDcdNnYTsSg4N/6A55oCZjO4Di6ZOzUvv1DzTVkPkqzjDkIgs6QdcxxIQK6d6wszi3DCaF6
 VE/Nn6WCdRxeS9mdSQh4Ws10DepbiC5dP5NH+SPeYuMkNXB0nqcXl3VoexxwDGOzDPzxOD3NR
 kP+Utp2oNYJnM8ekoIsByogkwHJgNTT/VjTVRVAUgHaTNfb3Rsf+sGaaU9QMoV2vLYTo2l+wV
 27mz5134yidQoo04NVb7s19Yms5BIPEs3/k+KhM0Fa2N1PaGFJR7qxZG2hwl5d64Y420PC4oX
 iKHBaMlfq7Sz219mySBy6LAVtJDydXM1qPlowQEO974u0vEESxePOzLrLczDHco9+GHN+dIhp
 8mxOcNYxQGaVTF1MhVzfelThkF1rzQMDaNIkV7cTpN/EneeEyEfAQuOcFd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_014359_891412_65DEFECB 
X-CRM114-Status: UNSURE (   7.07  )
X-CRM114-Notice: Please train this message.
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

T24gMjcuMDUuMjUgMjI6NDAsIEtvbnJhZCBEeWJjaW8gd3JvdGU6Cj4gVGhlIERpc3BsYXlQb3J0
IDQgbGFuZXMgc2V0dXAgY2FuIGJlIGNoZWNrIHdpdGg6Cj4gJCBjYXQgL3N5cy9rZXJuZWwvZGVi
dWcvZHJpL2FlMDEwMDAuZGlzcGxheS1jb250cm9sbGVyL0RQLTEvZHBfZGVidWcKPiAJbmFtZSA9
IG1zbV9kcAo+IAlkcm1fZHBfbGluawo+IAkJcmF0ZSA9IDU0MDAwMAo+IAkJbnVtX2xhbmVzID0g
NAo+IC4uLgoKSGkgS29ucmFkLAoKdGhhbmsgeW91IGZvciB0aGUgcGF0Y2guIEkgYXBwbGllZCBp
dCwgYWRkZWQgYG1vZGUtc3dpdGNoO2AgdG8gYWxsIGNvbWJvIApxbXBwaHlzIGluIHNjODI4MHhw
LmR0c2ksIGVuYWJsZWQgNCBsYW5lcyBvbiB0aGUgbWRzc19kcCdzLCBhbmQgaXQgd29ya3MgCm9u
IHRoZSB3aW5kb3dzIERldiBLaXQgMjAyMyAoQmxhY2tyb2NrKSBvbiB1c2IxLCB3aXRoIGJvdGgg
b3JpZW50YXRpb25zLiAKR2V0dGluZyA0a0A2MCB3aXRoIDQgbGFuZXMuIERQTVMgc3VzcGVuZC93
YWtldXAgd29ya3MsIHRvby4gdXNiMCBkb2VzIApvbmx5IGRhdGEsIGFzIGJlZm9yZSAobmVlZCB0
byBpbnZlc3RpZ2F0ZSkuCgpNeSBzdWdnZXN0aW9uIHdvdWxkIGJlIHRvIHB1dCB0aGXCoGBtb2Rl
LXN3aXRjaDtgIGludG8gdGhlIFNvQyBkdHNpIAooc2M4MjgweHAgYW5kIHgxZTgwMTAwLCBtYXli
ZSBtb3JlPykuIFNob3VsZG4ndCBodXJ0IElNTy4KClRlc3RlZC1ieTogSmVucyBHbGF0aGUgPGpl
bnMuZ2xhdGhlQG9sZHNjaG9vbHNvbHV0aW9ucy5iaXo+Cgp3aXRoIGJlc3QgcmVnYXJkcwoKSmVu
cwoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBo
eQo=
