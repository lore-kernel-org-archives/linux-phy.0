Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7034D1A431
	for <linux-phy@archiver.kernel.org>; Sat, 12 Oct 2024 04:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jb10F8jKYz/DnUVT2ufwsPrDXyq9wrZt/5HrSL2wucw=; b=x6EaHFWML0+IXF
	pbCUvJnGO7hO0zWt4qKNPn9fCRHQYw60jtoGGUZMjaFbq7RqMzuJ7ol8rymWHqF4uDF4T0G/01ZUC
	b7M02M5fqJwWwddVIh6Kg+MElu5QcOpMee61RV/DpjxbX//xnQj0ePTjE8D555T8+U2tPZn9Bg3sE
	2AnA6EL05Wdhb7RaLgnx4iaZkF5mPfFu65AwGaqA47ywir+UaugVf+w4Pp3wc77C8iHqDWnkdbC77
	aoU5CeM8r+2ubExlFn5KRVcIZpn0n9o9EBrGr+40a9z8EGPL8NXalIrr5n2UtiqUc7xgP6DQwVoK/
	NLlLz/YmGxxlXwQO02PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szTWj-00000000VXk-2AMo;
	Sat, 12 Oct 2024 04:14:49 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szTWO-00000000VTm-0omx
	for linux-phy@lists.infradead.org;
	Sat, 12 Oct 2024 04:14:29 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-20b7259be6fso28649195ad.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Oct 2024 21:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728706467; x=1729311267; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RJqJylDUeKhlaDFX6bqWWTyQxNxM099zR8Q/xSAgz7I=;
        b=Z0HzRPv7n3kBUBC54gktHZOeyu4bt94dGzEjJaVTnNN5OVeyWLKEkZ8o1wp7V8Kxyk
         90EPlIzbFI6GXjVgM8GTccQTJb0uN32QEpT3czKBvUiLSHDu8su+GgwFIu/Y64X7udqi
         4cjiFfDsHK7C376HJjiPV3ZMeh82BrYscq/nV916xWs4VECOxinD43Rk6nMiAhqFRQ4I
         Roe/W32Hg46JuKoFJYdxYiipTGAWnqDpBk8vY6Ndgrs51bQep2/i7Q7LHlr1E0WtbH/T
         S7/kxv+XGvp3wTPmPwbBfRfbHiR+dPeTGpPJGWWE7B58lgc2TtMcoMbR+cskyS5uCe1T
         brNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728706467; x=1729311267;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RJqJylDUeKhlaDFX6bqWWTyQxNxM099zR8Q/xSAgz7I=;
        b=tJQ1MzTF+nLLH+39kpe5y2JUF908KLsrP+OGgi8W8SgmRJuyhIgmXIG4NW2e0R0iXY
         GvVyuERdOdIFXQefkYPVaH3em4yxNtptUQqxd3j7uFi1ruVaCG0ZF6sBfeTf79sx23Wo
         u3z0hlANgHbzY/nObvE9LavrCHsQtav0bGW0Jvs/v/TqIZUtRZFeeyftNaSnw9gKCw+y
         GkJfmZJs9AkbJtwUqUwC9A7+05Apfpp2/yQoK+lIy8s6CxHCLJknzwaEcoeP5oc1UAsQ
         jyw9j/uTs29cQri4+fGghc6h0y5RfNq/tKVwzctDxXu26MD0wupnIaohm/+GKOP9f1xj
         zUSA==
X-Forwarded-Encrypted: i=1; AJvYcCU0OiSs/mWP/Lq6PgR9sNGgGRIw3Ngl2dwSVaeY+N8shkpVwAgfytxHS6uXVbuasSFIW9IfeUriccI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVwsP2anAihky87gKmUYPCauFD83Ht2ZqFPCG2s4xlxco823TZ
	osoCpm9Xv95yt43VF1lgAUu2o2vGkVjEtjMMGpPXbSNcl3wESvJm4BVAUr9UkQ==
X-Google-Smtp-Source: AGHT+IG+BMnbXVlgycfAEQ8uJvs3Se6DUQ9wtZpS90iXCykE8vg47B3NvxzG9M8NmLIkK1/Q56WHaA==
X-Received: by 2002:a17:902:e5ca:b0:20c:8839:c515 with SMTP id d9443c01a7336-20ca16c5a89mr72940785ad.56.1728706467277;
        Fri, 11 Oct 2024 21:14:27 -0700 (PDT)
Received: from thinkpad ([36.255.17.101])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bad991csm30855765ad.55.2024.10.11.21.14.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 21:14:26 -0700 (PDT)
Date: Sat, 12 Oct 2024 09:44:20 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v6 1/8] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x8
Message-ID: <20241012041420.uwcnzmdcm6kcjho5@thinkpad>
References: <20241011104142.1181773-1-quic_qianyu@quicinc.com>
 <20241011104142.1181773-2-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241011104142.1181773-2-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_211428_256760_3DE7C8DB 
X-CRM114-Status: GOOD (  11.20  )
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

T24gRnJpLCBPY3QgMTEsIDIwMjQgYXQgMDM6NDE6MzVBTSAtMDcwMCwgUWlhbmcgWXUgd3JvdGU6
Cj4gUENJZSAzcmQgaW5zdGFuY2Ugb2YgWDFFODAxMDAgc3VwcG9ydHMgR2VuIDQgeDggd2hpY2gg
bmVlZHMgZGlmZmVyZW50Cj4gOCBsYW5lIGNhcGFibGUgUU1QIFBDSWUgUEhZIHdpdGggaGFyZHdh
cmUgcmV2aXNpb24gdjYuMzAuIERvY3VtZW50IEdlbgo+IDQgeDggUEhZIGFzIHNlcGFyYXRlIG1v
ZHVsZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBRaWFuZyBZdSA8cXVpY19xaWFueXVAcXVpY2luYy5j
b20+CgpBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2
YW1AbGluYXJvLm9yZz4KCi0gTWFuaQoKPiBSZXZpZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6a0BrZXJuZWwub3JnPgo+IC0tLQo+ICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cWNvbSxzYzgyODB4cC1xbXAtcGNpZS1waHkueWFtbCAgICB8IDMgKysrCj4gIDEgZmlsZSBjaGFu
Z2VkLCAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC1wY2llLXBoeS55YW1sIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFtcC1wY2ll
LXBoeS55YW1sCj4gaW5kZXggZGNmNGZhNTVmYmJhLi42ODBlYzMxMTNjMmIgMTAwNjQ0Cj4gLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9xY29tLHNjODI4MHhwLXFt
cC1wY2llLXBoeS55YW1sCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BoeS9xY29tLHNjODI4MHhwLXFtcC1wY2llLXBoeS55YW1sCj4gQEAgLTQxLDYgKzQxLDcgQEAg
cHJvcGVydGllczoKPiAgICAgICAgLSBxY29tLHgxZTgwMTAwLXFtcC1nZW4zeDItcGNpZS1waHkK
PiAgICAgICAgLSBxY29tLHgxZTgwMTAwLXFtcC1nZW40eDItcGNpZS1waHkKPiAgICAgICAgLSBx
Y29tLHgxZTgwMTAwLXFtcC1nZW40eDQtcGNpZS1waHkKPiArICAgICAgLSBxY29tLHgxZTgwMTAw
LXFtcC1nZW40eDgtcGNpZS1waHkKPiAgCj4gICAgcmVnOgo+ICAgICAgbWluSXRlbXM6IDEKPiBA
QCAtMTcyLDYgKzE3Myw3IEBAIGFsbE9mOgo+ICAgICAgICAgICAgICAgIC0gcWNvbSxzYzgyODB4
cC1xbXAtZ2VuM3gyLXBjaWUtcGh5Cj4gICAgICAgICAgICAgICAgLSBxY29tLHNjODI4MHhwLXFt
cC1nZW4zeDQtcGNpZS1waHkKPiAgICAgICAgICAgICAgICAtIHFjb20seDFlODAxMDAtcW1wLWdl
bjR4NC1wY2llLXBoeQo+ICsgICAgICAgICAgICAgIC0gcWNvbSx4MWU4MDEwMC1xbXAtZ2VuNHg4
LXBjaWUtcGh5Cj4gICAgICB0aGVuOgo+ICAgICAgICBwcm9wZXJ0aWVzOgo+ICAgICAgICAgIGNs
b2NrczoKPiBAQCAtMjAxLDYgKzIwMyw3IEBAIGFsbE9mOgo+ICAgICAgICAgICAgICAgIC0gcWNv
bSxzbTg1NTAtcW1wLWdlbjR4Mi1wY2llLXBoeQo+ICAgICAgICAgICAgICAgIC0gcWNvbSxzbTg2
NTAtcW1wLWdlbjR4Mi1wY2llLXBoeQo+ICAgICAgICAgICAgICAgIC0gcWNvbSx4MWU4MDEwMC1x
bXAtZ2VuNHgyLXBjaWUtcGh5Cj4gKyAgICAgICAgICAgICAgLSBxY29tLHgxZTgwMTAwLXFtcC1n
ZW40eDgtcGNpZS1waHkKPiAgICAgIHRoZW46Cj4gICAgICAgIHByb3BlcnRpZXM6Cj4gICAgICAg
ICAgcmVzZXRzOgo+IC0tIAo+IDIuMzQuMQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+Cu
qeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0
CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
