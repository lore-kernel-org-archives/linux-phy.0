Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDAE5C47077
	for <linux-phy@archiver.kernel.org>; Tue, 16 Jan 2024 14:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hSvTe13Xyx5vYsSWe+3YdDrctWtOGJeOIJET9PQZews=; b=MD8Sk9sWoi4Kap
	H9TFss5F3bSfJP9xiu0SEhg30RGPPVZHM9KQ22VlDBfhJ2qDXS6ZatYrneueOfrRpBqSMlGrryoVI
	6OLRYbT8vwmDjLYgr22VvuK5u97acd13WawyzsB0kVUOwrDqQGZI/0OF5I1bTmYiUEfNymr8v4hmj
	y686h4LPWbiZvibcN6s5PzmSKl2Ur2HojC2kQq5BPSvoZZGDr23KZELANO/faPk/wcEozmWJ7fE+5
	E+o3q4L4DLMsgDKW25md6TN8I4P5lWfJf/ZgmnJ+Ke/olWcrbPcsD3c0k4oafDnamnmBe05sKd+tY
	g6wn/9FdEWcDbXKp+gdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPkLz-00CHkW-19;
	Tue, 16 Jan 2024 14:23:47 +0000
Received: from mgamail.intel.com ([192.198.163.8])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPkLw-00CHk0-36
	for linux-phy@lists.infradead.org;
	Tue, 16 Jan 2024 14:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1705415025; x=1736951025;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Na5eWQh1Z258eSgFghhYRXbSbOGbUrO4q4Hww3wmrL8=;
  b=L5uH7SuzPw8EKG21R2c4n6qayfb/Z66KYC7RnuI5D3xe397/Hw1DdFOM
   DeKmB9L8i+3xdqAGDnhK6v4R0voaUuHE7uzgfLmrpI9yNNugizd8OB12H
   i3Q9YtF/KopFP+s81am47wW/OR1SU/PrYgvLRvZnoH/wTfO4jxrls9/iF
   d7wQ3l5agZkLzEs+7PWnbfTvIJ+w/eUb/i9MV6wKqJMQXIOwoHWjZwnwg
   SdecFaSNDOjWySSRNh38+cBGw/udGXDnE40k5BYVEuEwM5L+30KupSdvV
   X7VXvlD/mjRJsyD/4uxtG6rNdn4yytBNJNbS0epVzwki3dWqjYnW9FALv
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="13376536"
X-IronPort-AV: E=Sophos;i="6.05,199,1701158400"; 
   d="scan'208";a="13376536"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jan 2024 06:23:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="1115308365"
X-IronPort-AV: E=Sophos;i="6.05,199,1701158400"; 
   d="scan'208";a="1115308365"
Received: from kuha.fi.intel.com ([10.237.72.185])
  by fmsmga005.fm.intel.com with SMTP; 16 Jan 2024 06:23:34 -0800
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Tue, 16 Jan 2024 16:23:35 +0200
Date: Tue, 16 Jan 2024 16:23:35 +0200
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Guenter Roeck <linux@roeck-us.net>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 09/15] usb: typec: qcom-pmic-typec: add support for
 PMI632 PMIC
Message-ID: <ZaaRZ/xi8vyIKD5d@kuha.fi.intel.com>
References: <20240113-pmi632-typec-v2-0-182d9aa0a5b3@linaro.org>
 <20240113-pmi632-typec-v2-9-182d9aa0a5b3@linaro.org>
 <2e07f014-0884-49ca-babd-b89cc90a16b7@linaro.org>
 <CAA8EJpqPqV_nHxxbo2Vzwcp__hvREjF3bhduGhM=7UpuOgBxTQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA8EJpqPqV_nHxxbo2Vzwcp__hvREjF3bhduGhM=7UpuOgBxTQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_062345_040478_6D850A10 
X-CRM114-Status: GOOD (  14.27  )
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

On Tue, Jan 16, 2024 at 02:56:11PM +0200, Dmitry Baryshkov wrote:
> On Tue, 16 Jan 2024 at 14:32, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> > On 1/13/24 21:55, Dmitry Baryshkov wrote:
> > > The PMI632 PMIC support Type-C port handling, but lacks USB
> > > PowerDelivery support. The TCPM requires all callbacks to be provided
> > > by the implementation. Implement a special, 'stub' Qcom PD PHY
> > > implementation to enable the PMI632 support.
> > >
> > > Acked-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> >
> > Still not a fan of stubby stubs :/
> 
> Me too. If there are better suggestions, I'll be pleased to implement
> them. Greg, Heikki?

Guenter, do you have time to look at this?

thanks,

-- 
heikki

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
