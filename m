Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AF43C52D6F
	for <linux-phy@archiver.kernel.org>; Mon,  5 Aug 2024 14:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1CGNFCvLJY3frJW/NlX9d3UuhQoPmUcPHZud6b77oM=; b=WPPUnqeKZTmRZ2
	xciGbtjbyxcWjRRObMoCumSABCB9EWULcPiIHJWTPPIxjKtGe1TXfvG3PjlDp+pdgvX8FFUkhjbsn
	a5POGFqQ+6aD8GzIkIUaCw/BnuCVtr3BZvsWYZXSKwreQpTQ/4poOWb8l0ebdyIHQlpIjaboHihfT
	6Uh/qGF0Up9gnLSvHQFqOfjTyZ4hP29mJOeyMGNP8hTxIZGDpZCRiituJ5oJWYyYhoT1kMMky9iw2
	aUhSQN+088vgNk6Eys7L8eLeR+8z0Z1i1gekI6ZfDat6xWuLnxUmBMElY7U3VRdEzL1akU2C/hXQL
	9eJXna3fkShrMvDkPRvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sayLn-0000000G50s-3lqg;
	Mon, 05 Aug 2024 14:06:16 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sayLl-0000000G4zj-2NpN
	for linux-phy@lists.infradead.org;
	Mon, 05 Aug 2024 14:06:14 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1fed72d23a7so77910485ad.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Aug 2024 07:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722866772; x=1723471572; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iEO2QRyVzS+ljtvv48YQ3sj1vOh86hPpXEvZGsjptjc=;
        b=TRDTbLDFdyVtyPLc/6X2Sp2L0X2ntv0NZlcOb51LyW7zlRuaSD96bHqhW0uGQMZ6uO
         LQ+QI3VYsoJXOnLu5Ge58vDrJQuyERsM24/LwgCN1JpM4p/owIvHdhQZzvjbprjAJNPb
         fdZZLrImm8VZa6H56V4kPbdwaAA7XFuKx28ty0EefkTJeCp/A0BdfHEg4A4YyyLLqyY4
         J7YwRxJ9T6dTE9F3VNEMVQpphKurRgrGs9YWlP1Paa3ocJK8zgVW+XzfYobyj9V+etCg
         2bZ+AMR4mP2gm+8bhBVou0krkgZOQnW3Tzoq27ARgBvWcYMGSvVAvNmTWJVITqnIuf5r
         imLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722866772; x=1723471572;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iEO2QRyVzS+ljtvv48YQ3sj1vOh86hPpXEvZGsjptjc=;
        b=Ri5ecgWECmz9uCryqqnZ7qAxJTMBSw74SLKdG2bYpIljeeNzK0Me9ZSsKMjpyDCZIB
         xSITT7gREqoR6SLjkRJsz42PBgm4omtF91W+j4KcP/JVvRIJEt7nELyAT53KD4T5LxAI
         3Csb2++PTJaPHQcmI/h2P3vyv093EUBigYVBp0wCpby34p5OL/ekBEqt39/1OVvFrq8h
         N1xNHQ76kTS5hTdr1KQCI8n9WpWHeiH8p3052C8FaseJoGhfs/TyRxzCI8PmtoF07Z14
         Ywx1vefK4xVwOiLY2L1tA3sy3XPqbs5y8/KYamvYl9a0dIXC5YquHG5grmQG5qecHzC2
         W/Kw==
X-Forwarded-Encrypted: i=1; AJvYcCUfy15aHbtzSNBbAe6A2/7nIqE2RdLqSCAijqIXnj3WuE7rawlURnOtYegz+KSImI3QH5gUgC3iKmg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzC4ppUuaLo+xjSEUKYqJ6ug8kPlmkTfOS5j4Rz3/9Z3jSo9swC
	rQGn/mImLP8BGlIh2IzrmgdpofFVNYLZuI+xGdK45wVNy95tPIZmIsuKs96tzA==
X-Google-Smtp-Source: AGHT+IEKSuX/zNrpwe96/y4uF+vgoKvY4MbzudYEdZ4IGeItnJCx2w2+Z3nvue/86TsoXCJF4krHHA==
X-Received: by 2002:a17:903:41d1:b0:1fb:3d7:1d01 with SMTP id d9443c01a7336-1ff574bc2d8mr92821085ad.59.1722866771816;
        Mon, 05 Aug 2024 07:06:11 -0700 (PDT)
Received: from thinkpad ([120.56.197.55])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff58f19bd5sm68269575ad.50.2024.08.05.07.06.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Aug 2024 07:06:11 -0700 (PDT)
Date: Mon, 5 Aug 2024 19:36:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: kishon@kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v3] phy: qcom: qmp: Add debug prints for register writes
Message-ID: <20240805140606.GD7274@thinkpad>
References: <20240731152548.102987-1-manivannan.sadhasivam@linaro.org>
 <172249532035.256913.2685367794999812971.b4-ty@kernel.org>
 <20240801070026.GB3705@thinkpad>
 <Zq-ura3oYbhb8C9a@matsya>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Zq-ura3oYbhb8C9a@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_070613_630634_63738955 
X-CRM114-Status: GOOD (  11.54  )
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

T24gU3VuLCBBdWcgMDQsIDIwMjQgYXQgMTA6MDk6MDlQTSArMDUzMCwgVmlub2QgS291bCB3cm90
ZToKPiBPbiAwMS0wOC0yNCwgMTI6MzAsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToKPiA+
IE9uIFRodSwgQXVnIDAxLCAyMDI0IGF0IDEyOjI1OjIwUE0gKzA1MzAsIFZpbm9kIEtvdWwgd3Jv
dGU6Cj4gPiA+IAo+ID4gPiBPbiBXZWQsIDMxIEp1bCAyMDI0IDIwOjU1OjQ4ICswNTMwLCBNYW5p
dmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiA+ID4gVGhlc2UgcmVnaXN0ZXIgcHJpbnRzIGFy
ZSB1c2VmdWwgdG8gdmFsaWRhdGUgdGhlIGluaXQgc2VxdWVuY2UgYWdhaW5zdCB0aGUKPiA+ID4g
PiBRY29tIGludGVybmFsIGRvY3VtZW50YXRpb24gYW5kIGFsc28gdG8gc2hhcmUgd2l0aCB0aGUg
UWNvbSBodyBlbmdpbmVlcnMgdG8KPiA+ID4gPiBkZWJ1ZyBpc3N1ZXMgcmVsYXRlZCB0byBQSFku
Cj4gPiA+ID4gCj4gPiA+ID4gU2FtcGxlIGRlYnVnIHByaW50czoKPiA+ID4gPiAKPiA+ID4gPiBx
Y29tLXFtcC1wY2llLXBoeSAxYzBlMDAwLnBoeTogV3JpdGluZyBSZWc6IFFTRVJERVNfVjVfQ09N
X1NZU0NMS19FTl9TRUwgT2Zmc2V0OiAweDAwOTQgVmFsOiAweGQ5Cj4gPiA+ID4gcWNvbS1xbXAt
cGNpZS1waHkgMWMwZTAwMC5waHk6IFdyaXRpbmcgUmVnOiBRU0VSREVTX1Y1X0NPTV9IU0NMS19T
RUwgT2Zmc2V0OiAweDAxNTggVmFsOiAweDExCj4gPiA+ID4gCj4gPiA+ID4gWy4uLl0KPiA+ID4g
Cj4gPiA+IEFwcGxpZWQsIHRoYW5rcyEKPiA+ID4gCj4gPiA+IFsxLzFdIHBoeTogcWNvbTogcW1w
OiBBZGQgZGVidWcgcHJpbnRzIGZvciByZWdpc3RlciB3cml0ZXMKPiA+ID4gICAgICAgY29tbWl0
OiA0ZTkyZDUwNDQ3NWVhNTg0MTcxNmFkNzc1ZjQxMjM0MjUyMGEzZDI2Cj4gPiA+IAo+ID4gCj4g
PiBUaGFua3MhIEJqb3JuIHNwb3R0ZWQgdGhhdCBpdCBpcyB3b3J0aCBtYWtpbmcgJ2NoYXIgKm5h
bWUnIGEgY29uc3QuIENhbiB5b3UKPiA+IHBsZWFzZSBhbW1lbmQgdGhlIGNvbW1pdD8KPiAKPiBT
ZW5kIGEgcGF0Y2ggcGxlYXNlLCBJIGRvbnQgbGlrZSB0byByZWJhc2UKPiAKCk9rLCB3aWxsIGRv
LgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
