Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AAC6C982D2
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wZJMuGbf7wW2gMOJOp70tm1Mo1OC6kzbttRQG1d1UI=; b=ZakN77/oxpb44M
	bhJKz96v4m2Stwsqcnc12Wnj+nin7dtH9l41ABQFwRyCHFrrmy0jfGTvgyeveW0VsNwnu0KBTET9b
	Rvbfg9fd4X/4EQmGpOmSUPCIRgngm8FV9M0Ca0RDS8cUtFfaq6ixd7muEq8RLV4iUC916PzWMsljB
	Ku2XYaDOJx2K6Y/UHLHxEixshMH+t1P+eg+Pi75H3GR02I4qWXcOkQoT3lYppvvsRaNvS+5pA3zSH
	gDgmfLOG2ASGtu8FqD8Ke4gx4D7DylkHHmgWC1sKoTW5MEA3XnEmRiBeeNS+c7eQjnCWnLEXQeHbV
	fbz3pzH+yncZeEMlgCIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7U68-0000000Dplf-300z;
	Fri, 18 Sep 2026 08:37:32 +0000
Received: from mail-ej2-f12.google.com ([74.125.228.140])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7U66-0000000Dpkv-1c7X
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 08:37:31 +0000
Received: by mail-ej2-f12.google.com with SMTP id a640c23a62f3a-c254f705536so87520366b.1
        for <linux-phy@lists.infradead.org>; Fri, 18 Sep 2026 01:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1789720648; x=1790325448; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=EsGHbbePiTbUM57NiqY/i+2M/82wdnf8yfJzQr85VmA=;
        b=fbl+0BjoCIvo2r6KHxjNUGZNmhyOJtZGEusg02IT01i6G1FU2TqKMa+ki5y+7rx+QJ
         /EWNVWzfonKW4hAhMoo8QsZhoYvigSawFfMUMw2UWMttaeeHizEhCNY5ukwkNx1U5NNq
         Zrk3HeiBFnpxc2zzpgCuOw9l1Z22R/FT1vdEb19EtaTtXWeI9hqOzwJxOjTJ8yyycv6j
         5MwpjVSmefI9Iox/s3UloOgpvaoLOmb7ASn1VVGnyz8QTTg8ign/sYgPvGqtD4MVBiao
         4gWc5SbD4YUhvhtFxP2ijPTRdJq1upXiQ1utUNMarLXWSOLuHHJE5cGtz/BaWhNLVgMy
         EkNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789720648; x=1790325448;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=EsGHbbePiTbUM57NiqY/i+2M/82wdnf8yfJzQr85VmA=;
        b=eF+fSEsAaFexbo7DtptTYKzWl0roZgIUOg5G4/MFwB31fhFIzRHf/6GQ2oE36zlp03
         HEtJO71mtG74MrFMdyDEcq59eybBuKBUWBQ3o0jvz5msLiqxh7j6XJgSWj2R7koWDXYF
         GmFUQ8O/0MOxK7bDfyBL94G6rsO9FOnvZj0/m6jh9UoCe6LwFc4SkGlHJ6SQxlZ04W6+
         VAEJe4BXiCb9selpnPqps2hVQ/nebrOGopdtAMLvktgLD4V2VytF1OjouMUWiEcJHN/x
         v6ZrB5ZOjFoBIir7wKoHbIDOY5VfxxgsTnrQHPZjgPxKNl9ZQgDQRA83HbeqXdz0WB+6
         q+Tg==
X-Forwarded-Encrypted: i=1; AKwUvBzwPxexDoQb9Zfn3W9YblHauBAZWtZiLYP+3z1X34HrC5jVz2KKiI+e2Wc9Fhp63zBXqpKgDENuW2o=@lists.infradead.org
X-Gm-Message-State: AFuF++lPpZS5E5ecVrYNsnzbVryggsU60Fb2P886ONU/3JEGhsImJIhV
	Lp2uupUHCixoLWRTQHbkY0nx3CrX77nsKKxI1xL2UIFvUBkXi3nC7K2DMiDGdOw5E2E=
X-Gm-Gg: AYBFou3EIUaK9SXcgzbRpwbvt+N5KBZftMa0MwuMHkS9v4i9G024mzHw2VU6TuNfq3U
	7wzGl+eBWVVDOYc02WzSxZyaAmbsNxCr+gjaoi0eE/HMhk8Qe0JTmFjMLVGEHIO1fjU+UH1IbRp
	GYg6V/dytwLjtilUZaysnFP4t/gy9eMo4FqQ8ooG2X7Jh2AHGz6eRfmX03BQWaDdneyJahhOJ+F
	wa+BlK9MuGAKE/wsVFR1upnfa5+15uCyU2UFubnO/s9IDnZ3Vr1d/EnD7COFNivij82sMrWTyAs
	M/Yu/qR/cs8L3hJZ7N24AE5Ib9o4UbFrEr+VUWmsinvRuDsK9FKaSl2Q+EO9nVbHlioNmyMxFpy
	GWMLO1uwXqfKEZW9pJSdRtAI9TnukVkxg0CHs7T8IbmNOM334c5Z8ffug4+fElffSWWOfjGTBGb
	Nd8VZgHoe5YTB/3IgjdwMt77KjqcsE9FtPfi5MA+HOWfSlj3iCZVYMp0nzRddMHxNuVl9uxgtbl
	Ik8bIncYQ==
X-Received: by 2002:a17:907:1c1b:b0:c25:62db:772b with SMTP id a640c23a62f3a-c2a15846850mr191330566b.7.1789720648074;
        Fri, 18 Sep 2026 01:37:28 -0700 (PDT)
Received: from [192.168.0.167] ([109.76.4.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2a1bbc6a06sm32784166b.53.2026.09.18.01.37.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Sep 2026 01:37:27 -0700 (PDT)
Message-ID: <70284db7-a7d9-48a6-acdd-7a9850cdc7e4@linaro.org>
Date: Fri, 18 Sep 2026 09:37:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v19 0/5] Add phy_get_by_of_node and devm helper
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felipe Balbi <balbi@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org
References: <20260917-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v19-0-21ad8a76e941@linaro.org>
 <cqoquu7hzclx54km763745dupaxahv7y4xbzq7vxg23isptgqz@j6los24mhnnn>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <cqoquu7hzclx54km763745dupaxahv7y4xbzq7vxg23isptgqz@j6los24mhnnn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_013730_436286_C395FA3B 
X-CRM114-Status: UNSURE (   5.35  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 18/09/2026 02:36, Manivannan Sadhasivam wrote:
> Looks like you completely missed all my comments given in v17 :/
> 
> - Mani

oops so I did, my apologies Mani, I will take those in now.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
