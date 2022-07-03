Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62956C43334
	for <linux-phy@archiver.kernel.org>; Sun,  3 Jul 2022 03:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jru0jV9t0Q8Qw1NI4C0VhnTwTrzX3OIMdxcivdvpErs=; b=OMeKUYddXT5iSg
	JbmWEDpQROvPqvT3YOCQoLNSvEcH9c8IrH0/QgfHxlStKDqhrwsZhw2yUCxPN2IUri1WkOREIMPQg
	zsBU9CI3Xw17bEo0D6H1G4vUupnqaxkgsBVY1gs3vJ+5zevoJ64nN0fKKLQPzoC2n50nNulZBLwK6
	QJwJPaV0HKmuW/XoA+hgSCr6QrQewfTnjEAmWBRdfmzKJW1vM0U2LFoC6JQpdrx3K8yCEGydMwxxA
	y2WqE9nnqpIcazmNX7ZwR30if35J4PV4ji0U4Pagnsw4O8ckQwvMXGigZuRyKI//G5St0oAkw6lDN
	wLmfRagAHL5vOH0iFkJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7qjK-00DXHO-LV; Sun, 03 Jul 2022 03:57:06 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7qjH-00DXFz-Ss
	for linux-phy@lists.infradead.org; Sun, 03 Jul 2022 03:57:05 +0000
Received: by mail-ot1-x32b.google.com with SMTP id l9-20020a056830268900b006054381dd35so5093329otu.4
        for <linux-phy@lists.infradead.org>; Sat, 02 Jul 2022 20:57:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ReE+gYjejCgybMmC7KlaPA5PsLgtTo7V9X67NZ4pYAk=;
        b=gp2XzifH+Zs8kldL7uO21jT+JDe4R8mUvI41QPX+iVOjNeUH1qB89P3ul9P4bFS7ME
         TNyfQYdk9pyT3q8FdGqNcJBdrUP4uYwPnq9/I1xEch8quoIOVaISYl/Udle2pjiV1YPo
         EUl9ON58sX1cr1GxGP/nAeeESr9Ve5DvfCIwow9kfguSIX0xNOeLnkY0ptu5umA+u/l3
         0uO6+QqioL30GAqmyJF38311LVsk++YgZtFgKCPLuuliLmg63bPkJIcql/3XO7qAjsxz
         +hhJ4BAkG3JEC6gxdB1WnNmPITP+CgNdX9CAnwlm2pJPXlerpQI/z6AUqYF66MZsYnLl
         9gkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ReE+gYjejCgybMmC7KlaPA5PsLgtTo7V9X67NZ4pYAk=;
        b=Hj4dWOreC3z3yx06FKXDTKN4gh+W3/ohk+XLOhhmgZQha/aTjF4mwpiKu5xTGjOGIJ
         WI2afiD2rDG92M3ODHr7XBNrr1x9QlRB4D3lXyyGtlojmnTB+NCwGBfCHaQLFRlDw4dt
         n31rUo/HWIT0YjokYo5OlqXMy6wX+MBDithuEiW625fQgr/gqkDSakLcZS1hD5f1U9mn
         ti/O1yQznGG77vc8aNNsDOUa422f8BxYwLH3W7inYfdn7MlGokns+ap7M+l4yY73YMcL
         EdrfJpWYbkdGtFphCf8xwe3VhddcnYGsmSNNzJZYLN6xUulw92jiyxK7jRgXlA+GVd1B
         Mp6A==
X-Gm-Message-State: AJIora/wdhWZysHEvEdEqmtLeoAy+ZtmJgW2jawzGG+cW48krf4ny6BU
	s6tXWnoEGQd/SUXGAT00qMhgyw==
X-Google-Smtp-Source: AGRyM1vfg6vhz+0ztl/DKpquzzFyeDA2GHkriXX2hTqqN44/oKBhzaV2duqjOigywYQkBOqIvyg3oA==
X-Received: by 2002:a05:6830:2705:b0:618:ba52:86fb with SMTP id j5-20020a056830270500b00618ba5286fbmr6821792otu.202.1656820622072;
        Sat, 02 Jul 2022 20:57:02 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:01 -0700 (PDT)
From: Bjorn Andersson <bjorn.andersson@linaro.org>
To: linux-arm-msm@vger.kernel.org,
	Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-kernel@vger.kernel.org,
	vkoul@kernel.org,
	bhupesh.linux@gmail.com,
	robh@kernel.org,
	linux-phy@lists.infradead.org,
	konrad.dybcio@somainline.org
Subject: Re: (subset) [PATCH v4 4/4] arm64: dts: qcom: Remove unused 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
Date: Sat,  2 Jul 2022 22:55:58 -0500
Message-Id: <165682055969.445910.18270347064167236555.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220516063155.1332683-5-bhupesh.sharma@linaro.org>
References: <20220516063155.1332683-1-bhupesh.sharma@linaro.org> <20220516063155.1332683-5-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220702_205703_974242_1F068716 
X-CRM114-Status: UNSURE (   7.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, 16 May 2022 12:01:55 +0530, Bhupesh Sharma wrote:
> As Bjorn noted in [1], since the qmp phy driver doesn't
> use the 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
> currently, let's remove them from the dts files as well.
> 
> Otherwise, it leads to the following '$ make dtbs_check'
> warning(s):
> 
> [...]

Applied, thanks!

[4/4] arm64: dts: qcom: Remove unused 'vdda-max-microamp' & 'vdda-pll-max-microamp' properties
      commit: ddc35664a38e31034c3519de71c2dea52005bc2a

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
