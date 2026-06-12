Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 667FCCD98CE
	for <linux-phy@archiver.kernel.org>; Fri, 12 Jun 2026 06:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n/Rqjy3Kz54lgpQkbS9ZLROGoM+Yo0n3lpqg5ixVseI=; b=RGHYbAHXsgxkh7
	wjjsm7Hui0DYo7xiaB4FQzHcPlkWs5fe9Y2/8/ruuy+31BQG+gRgcnSQVqXd0PUg/NANL4K9aQK75
	L0IySGSbbMJHEsSuMY/uz0YOAatH7pYYEoOUSpyBM50Yl9wo9+tsx6IlKPa5GyqV8Ur1HJVA1dWya
	Hxop6/SnW1ddsslHIsh73mozKhugORoeJl+emyE/sOLWauHbd7YH8XtTZbxVZLipwvZZoZ3zB0q0j
	hmq0+LcYNnUyRnfA4wjv1WUXb8DRFlXtVWXv7HXQF9zifO4agYOG48irkK7DsvcF5qz+v/rpkN36g
	HWMrQhnNf1eajH+ZL0Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXvAG-0000000APJ8-44md;
	Fri, 12 Jun 2026 06:14:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXvAE-0000000APIo-0GOi
	for linux-phy@lists.infradead.org;
	Fri, 12 Jun 2026 06:14:47 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 65C3CZi72534817
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 06:14:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4EHvEVapSr/pXzWOg5zZWwsW
	MURjNCE8rkDaje4bveg=; b=njOxZdAKtWqnUNLXoQVt7f1CI5elvV9KfMj5d6aJ
	iewqp7Pv2q4nB25W0Qly087GIweWvHzw2EILpZUKx1ml1RpLhG08QloaAPfqRLJV
	pbaUwdSa5lZVhZ9mTyAc3ay/LSDP9Im0teTyoYW8qAsSSUll1BP5tj7yCdwSVe31
	zHTKXwrzEBtGOoG5LkyDcWxX9DvFLNpgSqs35IlQVsTGp7l1OKEyuXy+PmNt9djw
	HmCV49NhdJfIwQEW49Qhi/eQGYlCmK28N6jLQQAqs6qeeyrVI6a2sx6RicltiLz7
	1MJYZmxg54W6MlHMoOcsLlRsRbPsoYW8QPjIVUK/QjEYFw==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4er2u41sxk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 12 Jun 2026 06:14:44 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-6751db2792dso338634137.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Jun 2026 23:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1781244883; x=1781849683; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4EHvEVapSr/pXzWOg5zZWwsWMURjNCE8rkDaje4bveg=;
        b=dWd7lin5OqpPRpNM+pwXq/OXz6XSVusuT921zLn/R2qjP/3KRVSD2XDUpRi7rBQ7xh
         XrRNx40WUa33of8xc7or0yxI+WNcGWOqpY6S3ipkrxaw/TfgLtFAL35EMRUy+06xJnsV
         8ST30dggTrYS0uUtaPjoyYM2HcQBOfW5C8ihjLZUWV5/sUgqRK+r3eXm9zpeqcuJRhYn
         DK53Wit8tSh0VksIgVeHO3QqcNit7plmvxRGyeebgWFgQKCATUNDSfICxR2dtjanG80h
         O9KwNQBOSjTpi+Sy6dy/WjRHhRSJoshWyuMHyttb9gdrTVowR/1KssObCZpc86FiEY6/
         yDOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781244883; x=1781849683;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4EHvEVapSr/pXzWOg5zZWwsWMURjNCE8rkDaje4bveg=;
        b=ULiJPN2EJ2LeSDIDhwsrCJnpUMkAthzldpQCKt37IyxKkd1lCQtjW7G7HuZSafwu7A
         plKpmmlwfuxOlJgQvy6T2fyLIorfxoRkCTwoeoEDk04c4bOK0PCRDRgKCMIOyJGc7B9A
         PUz0mBt9Dr3POco3lFm6gYdXtCpD2ySpcTJ+Q3WSIlAKPbPBHQbk3nTxY3VHOyGsm/+A
         Sw7uz0Lfx0OUrU0PWbdMecnjVGbZkVNc62WTguCwR434G5j1TYdLjyScZfVcWBy0avn5
         Ev8J3Yw7/3nk+xLYxWAHmo0EUbNP7XpEe2UvaAnPP8W0DlCyMFa99oZ0/KDZDBkHWi0m
         WkAA==
X-Forwarded-Encrypted: i=1; AFNElJ8Bfy6fw4yLLRU6NG5CXFqgbnKfnKwNjTwtlIL4qD9m61FcZnff8UyDo/gVYOrS6dN1ybIh0oBDI08=@lists.infradead.org
X-Gm-Message-State: AOJu0YxymuZ1sJo8l+ig0RqERX5iyoGGtv4Mv7CrBgogjg/EoMY/axps
	ZcHAH0VubhrKz6Hpjj3Uv4o7Y05hdhX/kn0wIvM1lbfy5fFJPkljkmfL2TIqfx1gCzzLgyhf+bx
	9PiYPti2Es1yOTAbQY2zdssHqcGY8eqTA7IRY/hGmhtboA68ChwZ3ETTfPz7QcTvivpwE
X-Gm-Gg: Acq92OGDWTI0W062elr0I+JxHZxyvWuhxEQXJXE3kTDHyYXlwUVAArRf3VEdD55DxLl
	vbATNBu7iC8m3MBiAETy73sgqJvVX3I4myj4mqjw20fBgSnrUnH3kryoKz/xUaUQVppqpYukx6M
	LVvUWvphYlF36KTu2NKdTSk4IsC4QtsCfeTnXKu+twKKIlGIctZY0ypNn1IFCIoon4PruGDEJIH
	TxSpaOV9Uji7xF6v+o7XSdTRsZYROB/LVaxu8wgk5Hzn7KlvrdAnSf5xylSpFKKvs/VGIo90EtY
	87Ty8jxhcypnhfE9FWmypk9LE8iULKhkbXYv8Vz8shyAe9awnW9sICPc1uhlZvJqXTjc21/MOIR
	XxYC63VnNRdHIkWJre2+LBj5Flk3FpyYxQ28fWvM+BUA6KJzDQoIjPD6SN2hi0LJXs5fSFAkdN7
	BBoQWfrHUP5Gmr1QnRSoYx0bWvCxhJTi66J7E=
X-Received: by 2002:a05:6102:38c8:b0:6f0:3ba3:7d84 with SMTP id ada2fe7eead31-71e88acea8fmr634856137.5.1781244883480;
        Thu, 11 Jun 2026 23:14:43 -0700 (PDT)
X-Received: by 2002:a05:6102:38c8:b0:6f0:3ba3:7d84 with SMTP id ada2fe7eead31-71e88acea8fmr634842137.5.1781244882942;
        Thu, 11 Jun 2026 23:14:42 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39929f547c3sm3733451fa.30.2026.06.11.23.14.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 23:14:41 -0700 (PDT)
Date: Fri, 12 Jun 2026 09:14:40 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add IPQ9650 PCIe PHY support
Message-ID: <ohijjcszynmoocjarid7mo7nbtd2dqcdvqrbnzb7anjytw5m56@nguadudsz7qg>
References: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
 <20260602-ipq9650_pcie_phy-v1-2-d8c32a36dbd9@oss.qualcomm.com>
 <56zkq7bwrt5smmmum6jckzrekkkqrych2gntx3obnrmamwumtv@espahwe6pc3v>
 <7def2ccd-0319-4f85-8275-73fd254d887d@oss.qualcomm.com>
 <fbtghwjrokuijatssy7xn2hwkp34p5fjyn3ndr5t2w67fkz2na@3izdh7uk4hst>
 <602e893c-d346-486d-86b3-50d0f01990bf@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <602e893c-d346-486d-86b3-50d0f01990bf@oss.qualcomm.com>
X-Proofpoint-GUID: CzW7fdQf8qFTr4DpFqU_rdaal12PAKvQ
X-Proofpoint-Spam-Info: AW1haW4tMjYwNjEyMDA1NSBTYWx0ZWRfX24NnQe3e9MEK
 7+TsYrmCqpeoRca/a1f0R0m8El0sL6pLOXhgzi2PzyjPWcngFzsZ5SFNEZ3lRdiA5nvKZ8s+R/7
 26aH8Jr7MgDvpw6KC3dYIpKe6IT5tCs=
X-Proofpoint-ORIG-GUID: CzW7fdQf8qFTr4DpFqU_rdaal12PAKvQ
X-Authority-Analysis: v=2.4 cv=N94Z0W9B c=1 sm=1 tr=0 ts=6a2ba3d4 cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=FelO9ux0wxsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22 a=JfrnYn6hAAAA:8
 a=EUspDBNiAAAA:8 a=FLPK4wCqi9WiV8jjNa0A:9 a=CjuIK1q_8ugA:10
 a=crWF4MFLhNY0qMRaF8an:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNjEyMDA1NSBTYWx0ZWRfX222P6A4jiIum
 M9sB7maN7zzbQ9UnfRrSuihtZ8Y+ERGdUnwJQJye++VOGTQfe694zUynKswzec1a6xulGhvsNET
 0vnDHUEXTtkDmulEjMBD6sbSoPmbolN1Y1ec9FMqRoPpn/Tf4pU8bfe4xPYn7YQ3WH6ep5w/KeF
 G+L0EvNmxDzTFb07hQ0DoJZkrTKZbzZqO2N5ig9L3eF5X1CzsQnblKbg3tFxiXxKAVWnPHRaG2j
 Gxr6RpqDkf5EZU8LolSCgvlQOjVwTZwQGqyiJtR4kUh3ilCGKdnk8Ucn1nOxbdtKkVnuAFTFww0
 AUJMqkFdX2bbwgdYplbtPWJB+lzALEynbio8khv9u0g3f1gR+ZlOlScjysYGL7yOF4dMdUhSPtk
 fz6SN4axRk7EBiPw8QgSy0V95yk1ZkGVNCnUUZgOvjp2QjdOKIIbJlUCiWidnkR8ij+SjxcDSzj
 QBDrcmV39Z0Hl9BITQA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.125,FMLib:17.12.100.49
 definitions=2026-06-12_01,2026-06-11_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 suspectscore=0 bulkscore=0 clxscore=1015
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606040000
 definitions=main-2606120055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_231446_224599_97594635 
X-CRM114-Status: GOOD (  28.56  )
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

On Fri, Jun 12, 2026 at 08:22:02AM +0530, Kathiravan Thirumoorthy wrote:
> 
> On 6/12/2026 1:52 AM, Dmitry Baryshkov wrote:
> > On Tue, Jun 09, 2026 at 03:46:56PM +0530, Kathiravan Thirumoorthy wrote:
> > > On 6/8/2026 12:26 PM, Dmitry Baryshkov wrote:
> > > > On Tue, Jun 02, 2026 at 02:40:18PM +0530, Kathiravan Thirumoorthy wrote:
> > > > > The IPQ9650 platform has three Gen3 2-lane PCIe controllers and two Gen3
> > > > > 1-lane PCIe controllers. The PHY instances also require the on-chip refgen
> > > > > supply.
> > > > > 
> > > > > Add the IPQ9650 Gen3 x1 and x2 QMP PCIe PHY configurations, including the
> > > > > refgen regulator supply.
> > > > > 
> > > > > Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> > > > > ---
> > > > >    drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 220 +++++++++++++++++++++++++++++++
> > > > >    1 file changed, 220 insertions(+)
> > > > > 
> > > > > @@ -3378,6 +3524,10 @@ static const char * const qmp_phy_vreg_l[] = {
> > > > >    	"vdda-phy", "vdda-pll",
> > > > >    };
> > > > > +static const char * const ipq9650_qmp_phy_vreg_l[] = {
> > > > > +	"refgen",
> > > > > +};
> > > > Now vdda-phy / vdda-pll supplies?
> > > Cross checked with HW team again. Along with refgen, there is a on-chip LDO
> > > which supplies fixed voltage to the PHYs. It is enabled upon system power on
> > > and no SW intervention is required.
> > What is it being powered by? MX? CX?
> 
> It is driven by CX.

I assume that there is no CX collapse on IPQ9650? Is CX not scaling on
this chip. Please provide some details on the commit message.

> 
> > > regulator-fixed doesn't take the resource 'reg'. May be should I create
> > > another regulator driver which accepts 'reg', something similar to the
> > > qcom-refgen-regulator? Please advise.
> > If it doesn't require control, there is no need for a separate driver or
> > separate supply. For example, the refgen is being references only by
> > those devices which require software votes.
> 
> Thanks. Then let me respin this series on top of phy-next so that Vinod can
> pick it up.
> 
> > 
> > > > > +
> > > > >    static const char * const sm8550_qmp_phy_vreg_l[] = {
> > > > >    	"vdda-phy", "vdda-pll", "vdda-qref",
> > > > >    };
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
