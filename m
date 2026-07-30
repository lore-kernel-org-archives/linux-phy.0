Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDC5FC54FD2
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 09:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G/5skq558FUtFlVaLEklBhxElzmg1tpgQOWbQobt1us=; b=1w8l7M5axWC5Os
	x2H9BKqIPHuUyWW/ZJCDP+7KLm9PGu0YUqltIPlMOW8v6Xed1lE+/1NwIEgfkxipK145+K5IyDnVx
	0jSmv9T9R0L973ovvhRX/+skdjwZsmL9jBJF5hEFQ7ACEqhy42GD2Wngj2nvRWjlJfS/R6P8LKW06
	tnLvsOPgV+EGHm3ROqCy9c/Ncmt9bx3AWENyf96ZfoWjiohFmP62ga4akPKrYhcVx9EoYNFKNuq63
	fy2YSSZvRfu9R4Nu5QvSFMfYQd7Tvbk9NOFE2bDgLcc4lI5AM/8k/olzg2xfv8UVkmvsQV0fkhM6Z
	XN8e84iSshUeG9F7bSUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpMuC-00000009yln-0pvZ;
	Thu, 30 Jul 2026 09:18:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpMu9-00000009ylJ-2tpY
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 09:18:18 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66U8smhN1504741
	for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 09:18:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=m7D6CIAxG2VxuD/7lWVUh+sF
	Bcex9ieNa67C58ZvSVk=; b=LCM0Lqgo/VO/dh0bjt9RRFxsJInm3cQkhuUvlf8/
	i9NuLZu5lWLbCn9MCvhBsjqdZ+rK6aovyJFylIEYvT/j9pZ9kqNa7ofq44P/XTH2
	+9nu6bwd/3gFENAC9IGtt3ejxJCd3Iv+sktjlw3YVEwzqtOBQcuBzV+Dj3rWLxvd
	FgNH7B6W/uM4Hd6tS7St7sGK+Jijw4L3RVhbVBl7SYMOIKXrzB+EgOfvGX0HtxPH
	lSVCdHg4C0gxMIo5lC+aA06HYQjV2Y6rfuLgEWAinvJFCev/UQeFIwDG0FxMe6a+
	nJsQ+xguY6LLwYQ0VTjN6Rmv26rwladL0LwW4+5pVhxiSw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fr3h1r43r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 09:18:16 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2cceabd70f5so57455535ad.1
        for <linux-phy@lists.infradead.org>; Thu, 30 Jul 2026 02:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785403096; x=1786007896; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=m7D6CIAxG2VxuD/7lWVUh+sFBcex9ieNa67C58ZvSVk=;
        b=bKEH6l4ZqsTSrsDOJ22/pDExFOThZzdrTE59gL8ctRYxeX7yZxa/JdkADxQFvczVhT
         fKL7EV6UWQC7ynRRiOal2L4lDWJJlziBJWVPTVsJgjZkONJYrlfwog9fezym+StkrJVe
         ZMqxjQg1NJbk1/94RF/C1V/2526EZWWs6nhi/6RCrFJzT2frM5TbJn8evf8ThHSnVuqA
         BK5K3rAG+3oikHurH+ufJF1JUNTSM0NFgUCQgXHWLsOIVMpcK01JZc2/ub4A+wXJwdzb
         uaz/Ptv2r6xnG6D8XkUQdz7G0C3gE1pEQnhEJQCbq3OsZ6qXApcsjIwNxGtIcU1mXmEl
         TEQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785403096; x=1786007896;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=m7D6CIAxG2VxuD/7lWVUh+sFBcex9ieNa67C58ZvSVk=;
        b=iccNc+3tqb0bM+MJTUnlr5wy9xSN1WNmR/V7I+xrOLYVVdO58t7Gr2u9ika4vIin4w
         KoWyM2k7nQOwSG1k66RKL7K1XsXNND9D6cJ56OkyEdO6+AL2oRdQc/7x0TeF4mkynfhc
         ncK5VJfnPzFJ1oe0UDTEaIS620/4LrgNihsUH/qOZCMokwcImiqEoMKsPxg9DzuQKz0f
         5GNelx6WTbKQ0n2m4LsVEWvFMv2N7E7Onhlyoh+tDi3o4V+aODO8Q3ZdYqaTeryvfKRt
         PQu1eeFo7HeYr2yfScQKo3kB4HW7nsukPya5Zsav2Li7slc48yxfsyKcm00Q8e2O0gt6
         h5Cg==
X-Forwarded-Encrypted: i=1; AHgh+Ro+CRa2Euxz6Dffi9/OcjLcl4iHY1lGKmFFgzhTJw3IaLgA/Vaiq5dSwNH4AHLgidwTNY6R4FCGa/g=@lists.infradead.org
X-Gm-Message-State: AOJu0Yygk9MxWEV8Hf9ZrSzlGXbdmm7ndFAJpBcRJuwUuzMu5hw4azwD
	8aZQC9kI2zhpdK5Yc396+16k37xEGQlI3ze9KX7yd/I55L+1GTyG4ldhmrMLFMcxhtUwamyVXNG
	7PZsd6MI5ZkdV+28YnaKsSiLgl/pwIu0FupE1XcghvAie4O9Sw5kcIuP7xZOG8GIYcgnO
X-Gm-Gg: AR+sD11s/ueHbkjTgEhXZ8InxPHR0h3JBUvDoZ+f1pFkEF9YuCxaAkYemhGg65ZIujW
	xVoCkPirAQxYrItOUOJ3IcLvzydMDPkO1TONemZSkuxzJNSZufwfI+BC+ocmd+y2ZRP+eU+/1R6
	C7cmIRYVRWgkYr7qf5b8VzSd2rlFIUYyg7n42BWrXjJTzvgxzAxjE//22KtuHvGC/iVZM1frqVR
	pwJ063Vp5Ey0F+H//jERb0sQbzI+n5YjAL+mU8b1N9Bc4xlxUMK5OsPiPyzXcx5mctExNjxl140
	hZuVoTajvrnKTEtR5gVIEfmfZ53A/Xa4BuO29O79O0R/tvaQ+c5oYLOrWbyJVdI9IEbft8ZlqMt
	MMOkpguUexKIH1DmGXDgYG+IoWbSHKaAK7CENK+PobB181Js=
X-Received: by 2002:a17:902:ecc5:b0:2cf:ca89:4990 with SMTP id d9443c01a7336-2d035be854cmr19137975ad.17.1785403096184;
        Thu, 30 Jul 2026 02:18:16 -0700 (PDT)
X-Received: by 2002:a17:902:ecc5:b0:2cf:ca89:4990 with SMTP id d9443c01a7336-2d035be854cmr19137645ad.17.1785403095691;
        Thu, 30 Jul 2026 02:18:15 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d022bc6d70sm23702795ad.39.2026.07.30.02.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 02:18:15 -0700 (PDT)
Date: Thu, 30 Jul 2026 02:18:12 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v7 2/6] phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver
Message-ID: <amsW1Efw7vXDqLrw@hu-qianyu-lv.qualcomm.com>
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-2-65c8469c6b65@oss.qualcomm.com>
 <3b0166c0-e1e7-4746-bcb9-ef78b9a86c8c@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3b0166c0-e1e7-4746-bcb9-ef78b9a86c8c@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: FqKaLUGMR1g74PuO8nK4xvzqZJc_-DJW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzMwMDA2OCBTYWx0ZWRfX9620F80xFuwP
 vL0+2RrQEn4r9Y/LkVtuY8MyslOcTz/iQcTYuJSOwOouMsCT3i9VHbg5wxuseZg1prKa+/ADLJ8
 8SqFiyFetxtcR5HlzF1r8svv1VF9+c/QzgSRO9A7YyydxKqeNE0hz5zuvoStftvip5FfgMNuoAG
 uPEJRDhjFZRungoE7A5eEUrxkycWDSQDNX2335WYXra8ev7XtkNN5aqGFDcmfJmj0f4hR0qUDCt
 95xRb7VOH0FS4QssoFLsCAPsZHuycJWW2BIanlvxV90ZO5KKwkj98/qv26JwKRlZJEZ+iDWLyBi
 gWrC777ZgNEBjosVKZMwSyR879OO0i+VFQLEZbqvz5UQYLx8Ys1x0ECtug2gEOhmUNn2JLVc2IC
 ymapjFEtsynhe6bSv9SVGTy9iCGr3/1rR3P2sMNXpizHMN4O0ej8uH/1UdpTRiS0ezrU29obQ50
 tz2M3sL4j02C3+eBlwg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzMwMDA2OCBTYWx0ZWRfX9I/8pT+nbLEm
 TgDZfARmR2Fkz/BqR3t11FCWjkH10UzEb7qab8VUJmkw6sOBtrsYqMVv2kgmarIlOSuq3g2VTbb
 EjsXU9sSPU4pn3LXsdUw2hAg6o3BVYQ=
X-Proofpoint-GUID: FqKaLUGMR1g74PuO8nK4xvzqZJc_-DJW
X-Authority-Analysis: v=2.4 cv=K/QS2SWI c=1 sm=1 tr=0 ts=6a6b16d8 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=B5iJy24gySRdRLL-o9UA:9 a=CjuIK1q_8ugA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-30_02,2026-07-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 impostorscore=0 phishscore=0 adultscore=0
 bulkscore=0 lowpriorityscore=0 spamscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607300068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_021817_740720_DCA5C986 
X-CRM114-Status: GOOD (  35.93  )
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

On Mon, Jul 27, 2026 at 03:56:53PM +0200, Konrad Dybcio wrote:
> On 7/24/26 12:01 PM, Qiang Yu wrote:
> > Some QMP PCIe PHY hardware blocks support multiple link topologies (e.g.
> > x8 or x4+x4) selected via a TCSR register. The existing single-instance
> > QMP PCIe PHY driver has no way to model this: it assumes a single cfg per
> > DT node and instantiates exactly one PHY.
> > 
> > Add a dedicated driver for this class of PHY. Match data carries a
> > per-mode cfg table; qmp_pcie_multiphy_probe() reads the current link
> > mode from the TCSR register pointed to by "qcom,link-mode", looks up the
> > corresponding cfg array, and instantiates one qmp_pcie per sub-PHY
> > required by that link mode, registering the clock and #phy-cells = <1> phy
> > providers so consumers can address individual sub-PHYs by index.
> > 
> > The driver inherits the phy setting and link-mode programmed by firmware,
> > so only the no_csr reset is used and no phy setting tables are provided.
> > 
> > Add the first match data and compatible, qcom,glymur-qmp-gen5x8-pcie-phy,
> > for the Glymur Gen5 PCIe PHY that can bifurcate into two x4 links or
> > operate as a single x8 link.
> > 
> > Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > ---
> 
> This looks really good, couple of follow-up improvement suggestions
> 
> [...]
> 
> > +static const char * const glymur_pciephy_a_reg_l[] = {
> > +	"port_a",
> > +};
> > +
> > +static const char * const glymur_pciephy_b_reg_l[] = {
> > +	"port_b",
> > +};
> > +
> > +static const char * const glymur_pciephy_reg_l[] = {
> > +	"port_a", "port_b",
> > +};
> 
> I think we could construct these names at the call sites, with
> essentially something like
> 
> for (i = 0; i < qmp->num_ports; i++) {
> 	sprintf(buf, "port_%c\n", 'a' + i);
> }
> 
> (is that too cheesy?)
> 
> [...]
> 
> > +err_power_off:
> > +	while (--i >= 0)
> > +		pm_runtime_put(qmp->pd_devs[i]);
> 
> This probably can stay non-sync
> 
> > +
> > +	return ret;
> > +}
> > +
> > +static void qmp_pcie_pd_power_off(struct qmp_pcie *qmp)
> > +{
> > +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> > +	int i;
> > +
> > +	for (i = cfg->num_pds - 1; i >= 0; i--)
> > +		pm_runtime_put(qmp->pd_devs[i]);
> 
> This should probably be _sync() as phy init/exit may be called in
> quick succession

I'd prefer to keep the async put here. The generic PHY core does the same
in phy_power_off() (phy_pm_runtime_put() -> pm_runtime_put()), and the
async behaviour is actually what helps the quick init/exit case: the
idle/suspend request queued by pm_runtime_put() gets cancelled by the
following pm_runtime_resume_and_get in rpm_resume() before the worker
runs, so the power domain doesn't actually toggle. With _sync() the exit
would drop the domain immediately and a closely following init would have
to power it back up again.

- Qiang Yu
> 
> [...]
> 
> > +static int __phy_pipe_clk_register(struct device *dev, struct device_node *np,
> > +				   int idx, struct clk_fixed_rate *fixed)
> > +{
> > +	struct clk_init_data init = { };
> > +	int ret;
> > +
> > +	ret = of_property_read_string_index(np, "clock-output-names", idx,
> > +					    &init.name);
> > +	if (ret) {
> > +		dev_err(dev, "%pOFn: No clock-output-names\n", np);
> > +		return ret;
> > +	}
> > +
> > +	init.ops = &clk_fixed_rate_ops;
> > +
> > +	if (!fixed->fixed_rate)
> > +		fixed->fixed_rate = 125000000;
> 
> I think this always happens to be true in this driver
> 
> [...]
> 
> > +	num_pipe_outputs = of_property_count_strings(np, "clock-output-names");
> > +	if (num_pipe_outputs < 0)
> > +		num_pipe_outputs = 1;
> 
> This can't happen (clock-output-names is required via bindings)
> 
> [...]
> 
> > +static int qmp_pcie_read_link_mode(struct device *dev, unsigned int *link_mode)
> > +{
> > +	struct regmap *map;
> > +	unsigned int args[1];
> > +	int ret;
> > +
> > +	map = syscon_regmap_lookup_by_phandle_args(dev->of_node, "qcom,link-mode",
> > +						   ARRAY_SIZE(args), args);
> > +	if (IS_ERR(map))
> > +		return PTR_ERR(map);
> > +
> > +	ret = regmap_read(map, args[0], link_mode);
> > +	if (ret)
> > +		return ret;
> > +
> > +	return 0;
> 
> ret = xxx()
> if (ret)
> 	return ret;
> 
> return 0;
> 
> can be collapsed to simply return regmap_read()
> 
> with or without all that,
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
