Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A776C4167B
	for <linux-phy@archiver.kernel.org>; Fri, 15 Dec 2023 10:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jW+GoF5qfcCVYMN7oGBwKODCdXauDYxS91USOyVkmAg=; b=T8vUf1Vg28QseB
	gPjGSU7JcMKDnHrz8l0+eZvNycNJB2NoYy6fElYeeqg6MIz0NJMheHEhEttVSpSgXirzfehgF0Cz6
	J6Kx28Gq+0kA0UhQcXvOfHuCJhONsilfPjCn/GXr5+Ed5sfRCEMMVzeFZy7ZdSR1FNUzhDqHNzXzu
	58Es3cgmFdWVImf6EN1ESSF31+98zHqRcShPjpIchwZiS9F7CbAMdk/nwIgs7T8JmckeODQvm1Hjx
	/eCmSjH7gPLwz+btLUG8z0gSEcoR86oq2M2rQ0wgLKx+QpD3tcFDfURQq347PIB+ehYixHpLjymGS
	UNgjhK38Yarl67iUpJfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rE5b9-002nwK-2G;
	Fri, 15 Dec 2023 10:39:15 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rE5b7-002nvo-1c
	for linux-phy@lists.infradead.org;
	Fri, 15 Dec 2023 10:39:14 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-dbcfd620827so223244276.0
        for <linux-phy@lists.infradead.org>; Fri, 15 Dec 2023 02:39:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702636748; x=1703241548; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Jiq31jpN7wqW65DapKOn/OwXB85jbhUHaMgJPt6QQsE=;
        b=GcQFxXM7ArINIBHcqPIgBTTgmap18i8X1DGf//HuecBjKFz0NYzfWF0WUiXXsJTKxj
         s3esCRLCmSHT/xRzKdzJqihNJX6VUjH/bKvKfzWsft0CljGF2I/nXtsgLlIfsBk/oMST
         kLswBr5D3VRywwLPMN2UT9/hbnlneiyYjk/nAe/VVagVYXQ5CK9Szx4zF2PvaqZ+g9ai
         bMRwfi8tNMYmMRiUYqg2SWm6QsBziwJa21dttMNZRY05chvAke1XTJIJmaGmoQ2APRtY
         OzWKxKJPYW6U07WVwq/USL76gWIQ4ORIZOfyEEe/mKJ+gRQk8nrKn0Zb+o/HriVbz/hk
         IKnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702636748; x=1703241548;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jiq31jpN7wqW65DapKOn/OwXB85jbhUHaMgJPt6QQsE=;
        b=pjStoYPrDorjOxUitOCRQGmFtpzEPCy7mVXT4geKAJ5ZzsDk5+rtfBZcGABgJFcdxT
         b/4Azoi1qGvWRFgWNY5Txn1BUH9BE2EgKMR3Ogk707AeRxMhzGdN4VntXKKVxzI/n0NJ
         Bruyr8/A/PTTkDS7+EtMwEAYRJ5WNIjndGe3E3bSrwiP2CruIQ02OiV+tfopWQHhdejD
         abuN8MQwIpvJy5kAYzoRFScdtvO2sjEBJLEHnlsQYEELL8+kbfwDAgvVp7YDCSzHKgg6
         oZOqBCK6wAoNH73ACXh1lgwOxBvnsvArRLBmXP1keuufsWNbxzbxj+mg+JnDhFiPyAp0
         Z3HQ==
X-Gm-Message-State: AOJu0YwD8CD7GZnelwLQM/wj92xYBWLtScgjDT7obQHs4TX5fNbp78nq
	uHkn8xWz5Vw1O0F3q5cYA4siUv13yqNxsYsMf9RUEw==
X-Google-Smtp-Source: AGHT+IElxcdrmH96P+ZEgAlgvlLpzFy7iBSuDziANg2vR8XMNL5IsP/0xtw+M60AD6jQ0D8un4ARlnBYJ0eGO/5EfGQ=
X-Received: by 2002:a25:2614:0:b0:dbc:c631:4461 with SMTP id
 m20-20020a252614000000b00dbcc6314461mr3877533ybm.92.1702636748662; Fri, 15
 Dec 2023 02:39:08 -0800 (PST)
MIME-Version: 1.0
References: <20231214062847.2215542-1-quic_ipkumar@quicinc.com>
 <20231214062847.2215542-3-quic_ipkumar@quicinc.com> <CAA8EJpr61JuznqfdMG96mjrqquf2Qbfe=potB5vzk43XexWj2w@mail.gmail.com>
 <6a3895ad-7da3-49c0-a7a0-7dd1031e0544@quicinc.com>
In-Reply-To: <6a3895ad-7da3-49c0-a7a0-7dd1031e0544@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 15 Dec 2023 12:38:57 +0200
Message-ID: <CAA8EJpqhdNg7t026PwPdGOA+-ba_GEBwsYagu_0aAwhkSuM6KA@mail.gmail.com>
Subject: Re: [PATCH 02/10] clk: qcom: ipq5332: Add separate clocks for PCIe
 and USB for Combo PHY
To: Praveenkumar I <quic_ipkumar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, bhelgaas@google.com, 
	lpieralisi@kernel.org, kw@linux.com, vkoul@kernel.org, kishon@kernel.org, 
	mani@kernel.org, quic_nsekar@quicinc.com, quic_srichara@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, 
	quic_varada@quicinc.com, quic_devipriy@quicinc.com, quic_kathirav@quicinc.com, 
	quic_anusha@quicinc.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_023913_566703_9FC0A2E6 
X-CRM114-Status: GOOD (  15.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Fri, 15 Dec 2023 at 07:44, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
>
>
>
> On 12/14/2023 12:39 PM, Dmitry Baryshkov wrote:
> > On Thu, 14 Dec 2023 at 08:29, Praveenkumar I <quic_ipkumar@quicinc.com> wrote:
> >> Qualcomm IPQ5332 has a combo PHY for PCIe and USB. Either one of the
> >> interface (PCIe/USB) can use this combo PHY and the PHY drivers are
> >> different for PCIe and USB. Hence separate the PCIe and USB pipe clock
> >> source from DT, and individual driver node can be used as a clock source
> >> separately in the gcc. Add separate enum for PCIe and USB pipe clock and
> >> change the parent in corresponding structures.
> >>
> >> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> > Please use your full name for the git authorship and or the S-o-B
> > tags. This applies to the whole series.
> My full name is "Praveenkumar I". In my region, we used to have only the
> initial letter of surname.

Oh, excuse me please then. I saw several of your colleagues using a
single letter instead of their surname and I supposed that it's a case
for you too.


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
