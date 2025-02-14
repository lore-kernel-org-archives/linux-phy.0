Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B8BBC02198
	for <linux-phy@archiver.kernel.org>; Fri, 14 Feb 2025 12:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EWJru5FF33SJhnwIG2J02gIfx5dSGR7GongPBXICGU=; b=ux+YtQxMPe+vlm
	oRLtA2NA6iEyM+TVpzbq++e0b/QDSwczMldqZgnvhSQ1SKcjPH6MLGrAXrEOEaUIqKhfZdF5vCzZn
	ciwOTBvZBvxzjt/9fgcmsKWfWFwpphiStE+I8SlLptvjm9S4ZIkuwhEBK+NPGa6peJ5JE6fmsNRiI
	ZMlyl8JwLAAoZIDMX+Edf7Jgl9KJwQLdUHsq3uM1s2jBWr9v4TDEiezEuIjpYLmOPk5snVCaaGaJ6
	z6eZf6xzaId/Q/C6udXrROY6lqfb7+moc+zMN5CDantAbCHpMwbG7FtlHiWn4ua03+11CIyHkwSnV
	VzOlW6AiKFv1I6QEprhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiuqb-0000000EqHm-43jv;
	Fri, 14 Feb 2025 12:31:09 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiuqY-0000000EqGw-0K6K
	for linux-phy@lists.infradead.org;
	Fri, 14 Feb 2025 12:31:08 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0CFB0A42A2B;
	Fri, 14 Feb 2025 12:29:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01BFCC4CED1;
	Fri, 14 Feb 2025 12:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739536264;
	bh=XVvR1UZVOeAsb4IoS3qSYew0K2L8dYRU8cdhlHhTJ84=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CgPgNxAd6of1YhhLPS5KYtQRFixV9ttF5g0h8lktuoa7Y42fUiPwPMqLOduemYIf+
	 08sgUtNsqlIMrFtZs//FCFBwma+6LIvZqQ8SZmfZBbHi84LDnz/L6a/He9M9HgP4aT
	 +dclcxn3686f5UUUzkeTA2ZUgHrn3DBpp9vSk88jFsrPEMYMDg3M+1a292rI+qDAJy
	 twIwGEH5JFPiTZVMRfktjzRXGUUagiiIy+gvqf/J9z+gmjZBljJRlwq0Og2Y3Rd7G/
	 Gz+8pnnPkbFTwvDX1kM5cWZTpj6TcLsObIUe0/izxhsRdKl3eyvUCX9wtu61J7r4+k
	 hLdsCd5yBglLQ==
Date: Fri, 14 Feb 2025 18:00:59 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH v3 0/3] Add support for USB controllers on QCS615
Message-ID: <Z683g5yuSu1Pi0pM@vaman>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
 <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
 <anfqf3jvh7timbvbfqfidylb4iro47cdinbb2y64fdalbiszum@2s3n7axnxixb>
 <Z2sJK9g7hiHnPwYA@vaman>
 <i7gptvn2fitpqypycjhsyjnp63s2w5omx4jtpubylfc3hx3m5l@jbuin5uvxuoc>
 <Z2sOl9ltv0ug4d82@vaman>
 <318620fc-e174-4ef3-808a-69fe1d4e1df5@oss.qualcomm.com>
 <f607aa9b-018c-4df6-9921-725693353f65@oss.qualcomm.com>
 <CAA8EJpr48k_tHKk-uVpAH7TMcp0-V97x6ztdFrbv0Go0a6kD2g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpr48k_tHKk-uVpAH7TMcp0-V97x6ztdFrbv0Go0a6kD2g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_043106_178191_5BBE1C99 
X-CRM114-Status: GOOD (  10.03  )
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

On 23-01-25, 09:23, Dmitry Baryshkov wrote:
> On Thu, 23 Jan 2025 at 09:00, Krishna Kurapati
> <krishna.kurapati@oss.qualcomm.com> wrote:

> > > As mentioned in the cover letter, the bindings of phy have been merged
> > > from v1.
> >
> > Hi Vinod,
> >
> >   Can you help in taking in the patch-3. As mentioned in previous mail,
> > the bindings are merged and present in linux-next.

Can you pls post it after rebasing

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
