Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70591C38A02
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 21:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCYX6B90fVV8++chit13v73X5/eKX19yfnBLxuR1k5Q=; b=AvcTnNiWbbTuTF
	kJ2BSBnPL7YhzLkiTRRs+8FNPgMehJURQqYF3a3hYQOdi/XevBX9nTtj02XVOFFah7i8093gBjmYi
	jhWdepetrjhoJVR95SRuWVUhsjMgEZkg3n5oRncZ5X9AdZPy1BwGXdteW7K7RPvtPvAFJsJeOttqV
	5A/bEUCKkz2+82VXNtPeCTjiRgtSzuzqasGjT/Q6tQNkhJgYey4+EKTPgaN9JUG+r0RbOZDuXoIL6
	BUhIsqxS2SS6HdaufruNHRRzNRyCQIm6mGljs02Ry/LMn3/07oTMeqCBfZjPeb5AUpuNN6PDyuix8
	zkhi5eRTv69RyIUr/khg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootnw-009m2t-Si; Sat, 29 Oct 2022 21:55:48 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ootnu-009m11-Mw
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 21:55:47 +0000
Received: by mail-lj1-x22c.google.com with SMTP id b8so12543165ljf.0
        for <linux-phy@lists.infradead.org>; Sat, 29 Oct 2022 14:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ebz8DsXHyuMRTypjp3FqQKi0fJVFR4oscki6XfcLec0=;
        b=YqaMaYH1R4LKhk9GVQ3J931j7/r1rJ67dJwly1lLUDCUIiIkjM2uSrXore5RHz8yxv
         c8ql2/Yuju0KKbHgzz871gz2EAV1QkG31q/TctGsLfvGmg0kdUL2mXo8+ul6Jph5jCuB
         Zoye5dBs4/Y1XOLOIwkaJvMRdgLfyCotcwIqk2xtIPJC7XRnMhKAFHVKtrm91C92MhjJ
         PtdG/9cewwy/7JQDmAz7J1AUlN2w3gosltqtJjNBSM1IIi4UvZnOYtpUtTQLPyo6nvkT
         2yEYiOVMjX45Q1B1bHiv8z5Rji346bck3ee9GIRRj4JFKxEJCQdcCNDAQRZwHeNW7joU
         kcYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ebz8DsXHyuMRTypjp3FqQKi0fJVFR4oscki6XfcLec0=;
        b=Nxu3KpDTc4tJAnUACeNp6SfuyYbhe6HWm90XeN/BqsTmF/pFFb6+h1htsz9XQSWA/t
         ET9E904sHCwOrwD63SxAsH5jV1zDTsq6f41mSiR/FC+9igc9h5qSa90x80fygisou8Dp
         qTcFHvzaoaj7lT5ZsbJQBH4/1fJvm5QIR0Go1MrbgKPognbO4grYW7gG+0Ac1p4961k8
         C/Ug3k6KHl2ZqcEAeZDVsHbI6DEq1WzRyQ95/WeIp9Sl1g+pzXW+D89f8MzrQHmgWGUv
         tWNDsfy2EzPgDA2ir9k/wuXb5nKz6d4pCKz3Umt6IO3abr5l04ntxAMomHpdkYUsMxWZ
         6TTA==
X-Gm-Message-State: ACrzQf3SU5f9J/c/vJefThKEU2K+34qC+bYd31dY7KqwKf2/Ne6DfI4j
	77lkIXzyBAQcCLfQ0iq6N+d6yA==
X-Google-Smtp-Source: AMsMyM4L6oUpTFI/a8+rVzmSsZFf2B3JCLO/0xWk74TyXBM09quMwSJgLXXMflt9QCzw0D48TG52/w==
X-Received: by 2002:a05:651c:907:b0:26e:9a6d:a55d with SMTP id e7-20020a05651c090700b0026e9a6da55dmr2402691ljq.192.1667080545216;
        Sat, 29 Oct 2022 14:55:45 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id r15-20020ac24d0f000000b00485caa0f5dfsm456469lfi.44.2022.10.29.14.55.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Oct 2022 14:55:44 -0700 (PDT)
Message-ID: <09f21c66-1673-fbf2-9626-aa7ed800ee74@linaro.org>
Date: Sun, 30 Oct 2022 00:55:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 05/15] phy: qcom-qmp-ufs: Move HS Rate B register setting
 to tables_hs_b
Content-Language: en-GB
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 martin.petersen@oracle.com, jejb@linux.ibm.com, andersson@kernel.org,
 vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: konrad.dybcio@somainline.org, robh+dt@kernel.org, quic_cang@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-scsi@vger.kernel.org
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-6-manivannan.sadhasivam@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221029141633.295650-6-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_145546_810129_223BF704 
X-CRM114-Status: UNSURE (   8.90  )
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

On 29/10/2022 17:16, Manivannan Sadhasivam wrote:
> Since now there is support for configuring the HS Rate B mode properly,
> let's move the register setting to tables_hs_b struct for all SoCs.
> 
> This allows the PHY to be configured in Rate A initially and then in
> Rate B if requested by the UFS driver.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
