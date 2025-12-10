Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B195D3C52C
	for <linux-phy@archiver.kernel.org>; Wed, 10 Dec 2025 11:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4+6hn/Op4uXVEaW01nMiBJNKFHDKjIjvHOl8supBEII=; b=TbGyuQvkV25vA3
	bKs2OWAY6UoFaaNqOfJI1bX7y6Hrlob3gy9/G15epXhyNbnLi/qLJ3iqQhgweqTqbuxaeh7Por+d6
	uQjkU3WjrlanFbPm+ek9Qkb6aSuhYocl8npo9JuovNIP59Uepk9reYJLx3kVRaQcWn9KY7ABzVxpE
	kZHU44xMdZfhaRKc1dXTVFoDCp3TVVH6H1E30L1QUlrklEz3B5HHiuL7yuejsVVv2E09y2Q9ot2Hl
	q3l0dXi2tKq/Abb1ICWVo25fcbXadMynKj9ndW9eYdg93RtXuYuyoXugJp+XWkOWM/XDU9YLgpIfS
	v3KcciRWphHCziv9gA3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTILG-0000000FNSp-3OJV;
	Wed, 10 Dec 2025 11:26:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTILE-0000000FNSP-0QO4
	for linux-phy@lists.infradead.org;
	Wed, 10 Dec 2025 11:26:45 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BAB63Kd2419623
	for <linux-phy@lists.infradead.org>; Wed, 10 Dec 2025 11:26:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=TetCbA0vG3ujJ9H342HVOB/k
	gW1LYI/zlgrlQ7ZPt7E=; b=otf+LRyE7l+jTHY348nDXVPM8sBQfLqREbc8buUD
	tPMoNESiUwR0WW1Acrk0771Y9wKMIYkqENxdd05EP3uvfOu4cdg9Y2zm9zthdutI
	MNv7bpj9hun5Mbo/nEU50S8VvQAetkJjSMGosXYh3x/sNxJp9NElK/c8WotzEmHs
	mLnlKaEhFHYRr8Thu70UOjCK6RIeEpapCL0BpzRhmLzot99ZIL9FXazQSmJkwN7A
	6VK1JMIV0hS9rVSeVix65Ngxj80vkVO9cMdJX4++ZvOxxrc1p6Joxyu5AAQH5Jg2
	tGNNaPLmlbzn0eWnRbPrwXahGutMoe1ZQRpS8XzCEdYenw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay7pp01fr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 10 Dec 2025 11:26:43 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b26bc4984bso2353716785a.1
        for <linux-phy@lists.infradead.org>; Wed, 10 Dec 2025 03:26:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765366002; x=1765970802; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TetCbA0vG3ujJ9H342HVOB/kgW1LYI/zlgrlQ7ZPt7E=;
        b=QfF6MV93R1jG3zK0Oy3n2amA+jUZBdq4QzqTuC4A3zBrx1ghkCuO6B+AdpDk0xH6NS
         VB9ws5XFPAHew+VER4qN3IdcNW+hJzcQwNBjD7qxbNphwmtoyjnQbgiWcwVD2J/ZOPOO
         NvV1/h+XpvvFyYTjZdfT1KWPzQ1FDtz9mo2CPA9yiJ/teCAc8o2D3bt0jl6+yBw7gP0w
         ILxXqH+dh2EakANwf97LZjtJicfUb/Ns+v9dekiRbT+zPpsT5ARi+tH+bUyFZ6BuE1u9
         PIcxEMNn8ScFLydAPe6riK9OPzp71UG/FHU4Q7SIIFphj9Na32D8e3kwG/a6m70oZZAo
         ZmvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765366002; x=1765970802;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TetCbA0vG3ujJ9H342HVOB/kgW1LYI/zlgrlQ7ZPt7E=;
        b=FLHo7wmND3dIQ1GhwkVS/QGqXXSLiUkyp1dLSchy5TWZQFP0+oZygir1QvikXNtjIg
         DBpwTUQ9G0moINfzSuvf1uFc4S+wxciyVZ4Ufb4iV5n7RHepkA7nERJ0amklchLr+IrJ
         gTZqZT6jRshAnGDEsjGFp95xZayqyXinlAOmK7HlZdNMeXgldfrxrJKE0wAo3WnAWCC7
         JFx5XW7AcLpmgai6svkjKttWgLfs6sv8/mRWuS9HALluToKGSlFVVxSdTnqVhWTK8hOE
         GlqnkOGdv6vBw3TNTj8gdJl5WwaSXyaWBqi8Iv9zgNKUt0CfKFwHEhhAKkLSWyQJZKo0
         vMJw==
X-Forwarded-Encrypted: i=1; AJvYcCX6R9vD7QeEHBBwlkWGiCMjLYPrQwHKnJaejLmaq408MXiPoMe3kUaiDiMJJ3MQDYT2sEIYAwIVrGk=@lists.infradead.org
X-Gm-Message-State: AOJu0YzYm/k2Ys/x0yLqxWTW5UN7dB60HGSEJY/buanI/fXJPc4dzHo4
	g/74tVlHaim5ojkfFWdNmO8AOl3ounV0QlHcnOummd1p1N2kqGObF7p/KeZ4Pb9rq3E2qrFQmRa
	NMOnl6/F7v65k9xgWEPXcENhHf9s9RDLRMQix/H57dNFC4wEp0YHQVgkULle3LVMcsO5V
X-Gm-Gg: ASbGncuzfLR8ObeYBO4gqGzbFIppSaElhUVvjPLdRCGwJ94EVJkgXiqWWPw8Dt427Gr
	k8JdKOLci3RUZVdJIfVymb/4zlmjYANRVOR+v+jSTIfXzMG2axOc8uWfjzxx5ppvXs1LqDJyo5/
	wOveenv+kUgrb9vrrA9tlADpEUznHUvwO4jtkv3i145dueSvO32yMru/2iTorwL081YFdt+Iq28
	nYUqNWnv2Yjb+akYqGNvrvq7waQbQeTXcBOky2fwpC7BQ1g2LTOEhQ8sTmZT4fWkyOJNefk9rgV
	Bx7bITCmGwJv23AZA+Tzc+HyS+S9OIN4QpxPMWeCEM+TgmnJOvKxpom8VUk67NbOnv6puWiB5ik
	89eW6kBOoW4CUpkEf6KbE1Q==
X-Received: by 2002:a05:620a:cfc:b0:8b2:efe7:d82b with SMTP id af79cd13be357-8ba38c77fa0mr202718885a.30.1765366001919;
        Wed, 10 Dec 2025 03:26:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IExLkgm4f5QGQr+3+UudzpEtgPUVmMMlsdhTt53Ukg2vvb36GiyDfz4xLO9RSWHI1kJ95R24A==
X-Received: by 2002:a05:620a:cfc:b0:8b2:efe7:d82b with SMTP id af79cd13be357-8ba38c77fa0mr202715485a.30.1765366001265;
        Wed, 10 Dec 2025 03:26:41 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b412146bsm16555391a12.23.2025.12.10.03.26.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 03:26:40 -0800 (PST)
Date: Wed, 10 Dec 2025 13:26:38 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v5 4/4] phy: qcom: edp: Add Glymur platform support
Message-ID: <ef6gkmgy4n6ipdam2nbm3no2ew3mga6dt45xpf6ykv3is2nkjh@gvz6pzg6dk7e>
References: <20251205-phy-qcom-edp-add-glymur-support-v5-0-201773966f1f@oss.qualcomm.com>
 <20251205-phy-qcom-edp-add-glymur-support-v5-4-201773966f1f@oss.qualcomm.com>
 <q7iguwi6uxkzl3ogk2jidfncc3guuaqzszvemvqita6t3mlnvz@6e2vxnu4li46>
 <e22cqybvhlfv6mvmbr6tlaz4zousxcyo475g67yjerxw6xks64@6zzg6tj33kxa>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e22cqybvhlfv6mvmbr6tlaz4zousxcyo475g67yjerxw6xks64@6zzg6tj33kxa>
X-Proofpoint-GUID: rSxD7auidOVolBbG8KJatKkSY5IPv6Fy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDA5MiBTYWx0ZWRfX/l/HtgKN2y2M
 vHgNENHtOcLCQLS82+O2N+t9giq1UXVd7kp8NVZC+2FXbt+hR3yKNE07674+IVXH2RgjNKRuGfN
 lgrpTpER1H9yD1D0Rg1scsGghiJfK/k72B/liVJ7rV4t/IIA92/EqkH718zpUzvH6VRqWswyfEX
 WlGbTnEXJMDh41C8eV9rQeToK9kEFVQril2SS6fiE8OqkUeLTAlN6r2mTa124YiKpi7hFM4ttIi
 9VZ4cNsx0VzzLkpSfnlVm8DrEgaTYUkWKlBrsTQbfRtS8qKMV6gF0fshu5GRhGS5NEWWXTaTWR8
 n+y9aqxC+lUjAHcMcy3z4ePdRB0aIbwiXZBE6FLQ03E7N4yMjwEQerwXpEl/3G/APl6hWhx65Zw
 S9CL2iGA2cKxrCdAHRZDPSmncbVn7A==
X-Proofpoint-ORIG-GUID: rSxD7auidOVolBbG8KJatKkSY5IPv6Fy
X-Authority-Analysis: v=2.4 cv=WaMBqkhX c=1 sm=1 tr=0 ts=693958f3 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Knydav1BIcOQ2oiR49QA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512100092
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251210_032644_150044_B4965F49 
X-CRM114-Status: GOOD (  27.19  )
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

On 25-12-08 16:16:31, Abel Vesa wrote:
> On 25-12-05 22:26:35, Dmitry Baryshkov wrote:
> > On Fri, Dec 05, 2025 at 04:23:23PM +0200, Abel Vesa wrote:
> > > From: Abel Vesa <abel.vesa@linaro.org>
> > > 
> > > The Qualcomm Glymur platform has the new v8 version
> > > of the eDP/DP PHY. So rework the driver to support this
> > > new version and add the platform specific configuration data.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> > > ---
> > >  drivers/phy/qualcomm/phy-qcom-edp.c | 230 +++++++++++++++++++++++++++++++++++-
> > >  1 file changed, 224 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > index f98fe83de42e..052b7782b3d4 100644
> > > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > > @@ -26,6 +26,8 @@
> > >  #include "phy-qcom-qmp-qserdes-com-v4.h"
> > >  #include "phy-qcom-qmp-qserdes-com-v6.h"
> > >  
> > > +#include "phy-qcom-qmp-qserdes-dp-com-v8.h"
> > > +
> > >  /* EDP_PHY registers */
> > >  #define DP_PHY_CFG                              0x0010
> > >  #define DP_PHY_CFG_1                            0x0014
> > > @@ -76,6 +78,7 @@ struct phy_ver_ops {
> > >  	int (*com_power_on)(const struct qcom_edp *edp);
> > >  	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
> > >  	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
> > > +	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
> > >  	int (*com_configure_pll)(const struct qcom_edp *edp);
> > >  	int (*com_configure_ssc)(const struct qcom_edp *edp);
> > >  };
> > > @@ -83,6 +86,8 @@ struct phy_ver_ops {
> > >  struct qcom_edp_phy_cfg {
> > >  	bool is_edp;
> > >  	const u8 *aux_cfg;
> > > +	int aux_cfg_size;
> > 
> > Can we always write DP_AUX_CFG_SIZE values?
> > 
> 
> Sure, I could check what are the values for the rest of the regs for platforms
> with v4 and v5.
> 

So, after checking the docs, it seems we could write the reset values for the
v4 and v5 as they always are the same between all platforms: 0x03, 0x02, 0x02, 0x00.
At least on the platforms I was able to check.

Should we risk it and add these extra values to the array even though they are
the reset values, just to make the driver more clean by having single sized arrays
for AUX_CFGx between all platforms ?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
