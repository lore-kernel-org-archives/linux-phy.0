Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84ECFC77B75
	for <linux-phy@archiver.kernel.org>; Mon,  8 May 2023 10:35:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NE2FbCmba5lR999LuvHcIzNMbkxB6DIKKSmpgRV6EiU=; b=yo3i5+9ogYtcax
	l+CPNxSHJ+WSbURywTFmvWJY4MrWNOjmShlZWZb3isDFf4wzNoRzuHC0nkFiXtShFHOZGrwYcOkgq
	qUZezXgqohm/oK4sPWuMJL48cehW+v4AGzJtfUr7vxOanZ2H3u+LIgCSAm6h0FtCfmXS2NhEDO2Fx
	/hclRoiqvj7l4AzFCUVIv7H5ZWGe3NYh5kYWq5DtH6ol9Jb+3gK5ztpOCbfTSGiblyx5GmySlA6h0
	2JUB6cjYyj0icTMzE9nOzOs/yneqf3ta/udlYtp4MfuwTYp2QjoGa/6pp5j7AoPojjpw/HnKyGyVD
	tzuXlYvVaxJ+9yIVgLew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pvyCu-000JOL-0A;
	Mon, 08 May 2023 10:35:04 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pvyCr-000JNd-0H
	for linux-phy@lists.infradead.org;
	Mon, 08 May 2023 10:35:02 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 97C806273F;
	Mon,  8 May 2023 10:35:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74C36C4339B;
	Mon,  8 May 2023 10:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683542100;
	bh=Kiu4+RlvmFWz7J1fJODHws8Y2NusGtgsDOVVjxEOnCA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WtKs2lEg83sKkQoekxY7e8UfXjMyKjDpYwxHje7XUmp1Y71T/swsJt/g8S8qx5/oR
	 hPeLUfr1NNcD0U4oYLtMv3iRSBBV0I942c6xcLWXz8vfNSbRD7BgFuAeXj5/GmHi9b
	 Dnkqvp8oovy9+tEvBpMSQvnMLqbF0GaixIR1gB3YVrTOK8vKA2EtotKO05DboKB7Vi
	 GMlKAkWPitsFPCsHJNExiMaQROCEq5yepL6i3CTEzUWOlQZn0sv8aX6tjD4mBeE8Fx
	 2C2P4m26ZM6f+inp7ZzuakKxYqMBR/7LH8OUcd+Di7/FOAAEe+3LY3CpaNP3XV82ei
	 hi+U3i84r8JoA==
Date: Mon, 8 May 2023 16:04:55 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marcin Wierzbicki <mawierzb@cisco.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Bartosz Wawrzyniak <bwawrzyn@cisco.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	xe-linux-external@cisco.com, danielwa@cisco.com, olicht@cisco.com
Subject: Re: [PATCH] phy: cadence: Sierra: Add support for SGMII
Message-ID: <ZFjQT1kXG5LHWi/C@matsya>
References: <20230419093008.195094-1-mawierzb@cisco.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230419093008.195094-1-mawierzb@cisco.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230508_033501_173191_7C8CD1C0 
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

On 19-04-23, 02:30, Marcin Wierzbicki wrote:
> Added SGMII link support for cdns,sierra-phy-t0 compatibility string.
> The configuration is based on Sierra Programming Guide and
> validated in Cisco CrayAR SoC.

This fails to apply for me, can you please rebase and send

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
