Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2347FE71080
	for <linux-phy@archiver.kernel.org>; Thu, 21 Sep 2023 14:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVNjD+TetIQg8hwljaSvPAwbXnNUgFbes6gSTjL0rYQ=; b=h6ytuEdqKsobxg
	jnD/yq+5Sic/EY3Ez/4OcTDffgXL65g9eWaiV/dwj2LcxMv7Oel4i+QvGh5KtexbW6lCWVjTWRz4r
	6LuubmiSaZbZYz+v630SeV/tMVSNUWWHgGTkVhCRc71tZ2SvB0+KeXSNvcQjeqqlVrOHtepEt44v5
	V6GmJL1Ac6Uey7D7FqWz8EGAG9aNcMutX7/paRoTsny16T++1+AlS8I3oIKUyXtnVxeaVkK6yLGY9
	Ner7/myesPziI9ksDM1Nxn7GUpXYYr85lozvw2akttGwghjLu2J2pFDVXxRz6Mc1nGqslAkLQ3VAc
	I7QpDvYCNYlm6PXnGNqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdK-006GLf-2j;
	Thu, 21 Sep 2023 14:26:22 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjKdI-006GKT-0M
	for linux-phy@lists.infradead.org;
	Thu, 21 Sep 2023 14:26:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 36EEF601FF;
	Thu, 21 Sep 2023 14:26:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B7CDC4E75F;
	Thu, 21 Sep 2023 14:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695306378;
	bh=Y6tF5Sxcca3uknZoiD/RUnNmXLKJdlsB7DP2Xfz3jH8=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=Oow2mZRnk+semWy/ipKx+k8QwxReBm+OSDMXyq0ak5vClB9HJH5RTVQKBHHNFj0AS
	 OJ76rfLM1FPKDS5/qRKPEPl5giDEPW1xtnUQlonfcZZakQPFUqTxwh6tVDi8F37Til
	 G7s5rZwh9z7iiwlhIgOVPEo5Zn711BAhrxARs3bGfkxs2g/jRCS0CB6U+5AQMtknlb
	 Os4crsN1kXLjpB3s/2ZZjlnUJP8XsCCW44uA+lEJhSB8SI6R9SEtLfCgRKZozptoTM
	 Wko0pEZ8kXpoyUk3VJ1Gn3xGa1k5l+YSgiNq0NmieVaXv4EMEN/o1lotfFZ8FIBnjp
	 V9rqMxpUe5eYw==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 kishon@kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Varadarajan Narayanan <quic_varada@quicinc.com>
In-Reply-To: <1694069452-3794-1-git-send-email-quic_varada@quicinc.com>
References: <1694069452-3794-1-git-send-email-quic_varada@quicinc.com>
Subject: Re: [PATCH] phy: qcom: m31: Remove unwanted qphy->vreg is NULL
 check
Message-Id: <169530637607.106093.6024035938522205244.b4-ty@kernel.org>
Date: Thu, 21 Sep 2023 16:26:16 +0200
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_072620_219746_546DE375 
X-CRM114-Status: UNSURE (   4.83  )
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


On Thu, 07 Sep 2023 12:20:52 +0530, Varadarajan Narayanan wrote:
> Fix the following Smatch complaint:
> 	drivers/phy/qualcomm/phy-qcom-m31.c:175 m31usb_phy_init()
> 	warn: variable dereferenced before check 'qphy->vreg' (see line 167)
> 
> drivers/phy/qualcomm/phy-qcom-m31.c
>    166
>    167		ret = regulator_enable(qphy->vreg);
>                                        ^^^^^^^^^^
> Unchecked dereference
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: m31: Remove unwanted qphy->vreg is NULL check
      commit: ecec1de5c58f8f3ab6959fcf8d68752eeb65311d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
