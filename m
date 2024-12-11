Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 830D0E7717D
	for <linux-phy@archiver.kernel.org>; Wed, 11 Dec 2024 06:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FUFRsn916rXipvuukqFDez/QUtBCVdlOiV+EGgSZbk8=; b=3o3yXoNGlP86vg
	Ow6MWamBF7dXuz1QdsxZB9mZlhwdIZ8uLlGykEQ5xwb7LRNL6b6fgvOvbPoNDQ3tOsDEldWXubOmV
	SBIFE9MujCDumFfJ3XiNqRXzBSjIRC7JAWgKHCvq/KSRZpFvxH7nicR0s2w0DXhltoZIOUL856HrZ
	zLM8OjZ7m9yUFtHsmeUxINWOrfenIUOZZbplI9+Bl5mmN5/KK/Be+bSXEwJPe0f7bkKXg5DzEd3Y4
	URB4poHlkON/15tY8EMxvkZESQmNwRaqDyvOAYOIIGUe2DMTKqmmTtFS2zdJ2gVgq/7HmyQ7U3QkF
	JVw8ML8ZS+UoqbBDObJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGBT-0000000DvTh-0nDI;
	Wed, 11 Dec 2024 06:26:55 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGBQ-0000000DvTJ-3SmU
	for linux-phy@lists.infradead.org;
	Wed, 11 Dec 2024 06:26:54 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-728e78c4d7bso303127b3a.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Dec 2024 22:26:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733898412; x=1734503212; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g5uPtyeRCfhjHuSQG2EKYCWUSTJ57FDJopWrsPxMoIA=;
        b=k6MHmkesh1ZHUej5WJU2dc2CY6C+Eo5EA1k5q5Hah8oQA3ISypfLNEEVTN8qrTbozZ
         9K4r3JnAC6cVmzS61fM/RFR+NXp7eZpOExaXRykKTZwvIp4Bmx2krKAKzHhjhMKhnYaZ
         a8Ln6PsgOQ18+Djec6QPy44/SKDdTIMduaNL3N6jKmvIZ1H1nFwH1ju0kh22ju9/NRhT
         p+KQ/BEUWOY4/7uCxz8L6Ykemc7exdkoH+b//A60nB4B+YybTYX4wf1EFlph9upnnjTu
         aPwfCc/gsK0ycB8GtoiRdafoEEog5zlI9YdR9Bhy0UppCwPp0d45QMhah+Hz7b7TY2NG
         kksQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733898412; x=1734503212;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=g5uPtyeRCfhjHuSQG2EKYCWUSTJ57FDJopWrsPxMoIA=;
        b=fxft0K8hyzTqnGVVSsb2oTKPtWNGnVEiyTh2iwejbdve5Sub/aqL5vlNWiwoYZnCkA
         u/miYDM4ffnVFMVk71e2Kc7kb1gsa3Uv9Jlrj+5c0uWwRVieodUmMBTdzf/dxkPcXbwk
         14+5SHowF21hXu8a6Djqrl26UzqWBp/XLVbjYMX9V45YsqMSBcAPpz8j6WNF7+OyxLuI
         pKHW8/GP/RdXOP1V2hOUzVFbDSaDpPXr+K9bDcevoKAWQMb9qgYu2pRBYS+UJmlYBBij
         FK9PF3ESKKaInrXqYgn6k0k6taukr547bZihgbZVravOU9z+LGGsqKjY5c+8CE+u0wTn
         POUg==
X-Forwarded-Encrypted: i=1; AJvYcCXj4js778XdIdil6YSZ5WzjRkw2+ODJwj4wRiULYlQ4drDKFWyaYpzVPvTdviKuf7b2RtwSOB1ro8I=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyasme/2aN0OKQ3y0QjmVLX+i6dxlkFCirWZ8jL61HXM/aXmWtG
	GRTHYGO7dCVXsJB/pR6hMmSej0ICY6pNx5AWWACUiIotoZkScMaDpv3gubP68w==
X-Gm-Gg: ASbGncsC94jhgzBQCLRBgOgpLYVPYOxNHw1oiGTT7vRxMm8e3LfX4wyqsSQWNnVMSkx
	T5W4iLSX6m4kZa7lp7dxb3/SXQHNzDhbcE3uD2qnl1YYUkX5Se0p6Q7D/zW9ULnTlvsg/tNrtRC
	blaSkD8JoAjLmbfeFXC8g5oSiRnEDEmCLIl+eJYbhJBmwPPcyEoUEfogbFtODN8vQaFj5FDEnsc
	WWr9epR7t187KDY+EAv/xOesvAAS+juk43hVn1dPvt9NG12Ddxk7Anif4KUIz0=
X-Google-Smtp-Source: AGHT+IHcHIWCw3Wv6NHmzmx6YmsGHvWhwwPQ0jWBK0ivIaEUDWwhrrMbjDmLqm+k/dugJWGGhd1D3g==
X-Received: by 2002:a05:6a00:3996:b0:725:f3fa:8c6e with SMTP id d2e1a72fcca58-728edb8ea7dmr2564604b3a.7.1733898411754;
        Tue, 10 Dec 2024 22:26:51 -0800 (PST)
Received: from thinkpad ([120.60.55.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725d732ad17sm6806896b3a.45.2024.12.10.22.26.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 22:26:51 -0800 (PST)
Date: Wed, 11 Dec 2024 11:56:45 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, dmitry.baryshkov@linaro.org,
	abel.vesa@linaro.org, neil.armstrong@linaro.org,
	andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: qcom: qcs615: add pcie phy max current
 property
Message-ID: <20241211062645.3eut7ibjqymm6ayt@thinkpad>
References: <20241204105249.3544114-1-quic_ziyuzhan@quicinc.com>
 <20241204105249.3544114-4-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241204105249.3544114-4-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_222652_881022_3C3FD2C0 
X-CRM114-Status: GOOD (  15.46  )
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

T24gV2VkLCBEZWMgMDQsIDIwMjQgYXQgMDY6NTI6NDlQTSArMDgwMCwgWml5dWUgWmhhbmcgd3Jv
dGU6Cj4gQWRkIHZkZGEtcGxsLW1heC1taWNyb2FtcCBmb3IgdmRkYS1wbGwtc3VwcGx5LiBUaGUg
dmFsdWUgb2YgdGhpcyBwcm9wZXJ0eQo+IGlzIGZyb20gdGhlIHBvd2VyIGdyaWQgZ3VpZGUuIEl0
IGlzIHRoZSBtYXhpbXVtIGN1cnJlbnQgdGhlIHJlZ3VsYXRvciBjYW4KPiBwcm92aWRlLiBUaGUg
cHJvcGVydHkgd2lsbCBiZSBwYXJzZWQgYnkgUENJZSBQSFkgZHJpdmVyIHRvIHNldCB0aGUgY3Vy
cmVudAo+IGxvYWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogWml5dWUgWmhhbmcgPHF1aWNfeml5dXpo
YW5AcXVpY2luYy5jb20+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUt
cmlkZS5kdHMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUtcmlkZS5kdHMgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3Fjb20vcWNzNjE1LXJpZGUuZHRzCj4gaW5kZXggMThmMTMxYWU5ZTA3
Li42ZDkzZWYwZDg4NmIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9xY29tL3Fj
czYxNS1yaWRlLmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcWNvbS9xY3M2MTUtcmlk
ZS5kdHMKPiBAQCAtMjE1LDYgKzIxNSw3IEBAICZwY2llIHsKPiAgJnBjaWVfcGh5IHsKPiAgCXZk
ZGEtcGh5LXN1cHBseSA9IDwmdnJlZ19sNWE+Owo+ICAJdmRkYS1wbGwtc3VwcGx5ID0gPCZ2cmVn
X2wxMmE+Owo+ICsJdmRkYS1wbGwtbWF4LW1pY3JvYW1wID0gPDE2NTAwMD47Cj4gIAoKTWluIHVW
IG9mIHRoaXMgcmVndWxhdG9yIGlzIDE4MDAwMDA6Cmh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L3Fjb20vbGludXguZ2l0L3RyZWUvYXJjaC9hcm02NC9ib290
L2R0cy9xY29tL3FjczYxNS1yaWRlLmR0cz9oPWZvci1uZXh0I24xNTEKCkhvdyBjYW4geW91IHNl
dCAxNjUwMDA/CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k
4K6+4K6a4K6/4K614K6u4K+NCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1waHkK
