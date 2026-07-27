Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43B04C531D0
	for <linux-phy@archiver.kernel.org>; Mon, 27 Jul 2026 13:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=be3TaZXskCMccuqshHXdBoNlSzxSbXREgjXRbWQ8EdU=; b=t0G7RXUOFLbc0G
	AyAUCvTkiTreg1BfGloo95v9/FrqQZG2jHjERGz0x+29vC9WrniEZpbxMuVeFPMkjhtp3/E4EvR71
	DO1KFxv5unj9UIWbTLpkP2K1vp8NoQfgiWZKuNNcn96/xtPUPH6aQto92pBg4cghGsWWdXtBJSZVU
	mBtUN6NF3IgiJ1oLbXq1W1Kyf3NEm/oAcUL9HgszEH/yilyrTO5KwbwV5Rj8RZLxhFi+O2QncKytg
	4sdljAEUN0Z48Dj+10lTpx/8NRNyFjJcRrllr8fbTsK0I8aAi8kSQxtK8PUeiZWG9Uvp2VzIcUhPN
	Om/6cy74+/XGFGYKBbvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLpM-00000002v7s-32TE;
	Mon, 27 Jul 2026 13:57:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woLpL-00000002v6y-2EhA
	for linux-phy@bombadil.infradead.org;
	Mon, 27 Jul 2026 13:57:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=a2ecVVAzl7ah2+cxH73covTRhLHYFzycBQkVNDKcsK8=; b=fVQtXwUNt/777+FN69Yv5EHQpK
	9gSB3qLmEqq/NiB6w0gj6JkZwGNZVqeAsdg9pP1q3/mWafi2/Fu5Q9xYnm4vgtcSwG6xWFCKMfZ+d
	kt+LlDjaUR5FcG9K3ESM1cKb6voTdCDyxWphbnXWnyw/s+eE1keBPNP+OaK3KEflH+MgbqG3HOhUr
	OCex3PDALU8IwUyT3xeomLDmO+gEOnSkPHc0DYgrtzmauubUqtZ7578WLgn8FnHdgHQoMVXSJyAJc
	mrCAXsObJyTeaIWlRXkdXTGiVYcS/0/+TxWDIGv/9YzPLQ+xvAWEa5UE7WG7epBf3a8+TDnWzLMGP
	mozc12oA==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1woLpH-000000048YH-483n
	for linux-phy@lists.infradead.org;
	Mon, 27 Jul 2026 13:57:06 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66RDlYPK855731
	for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 13:56:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a2ecVVAzl7ah2+cxH73covTRhLHYFzycBQkVNDKcsK8=; b=TIsR+fhkLAqn97fF
	3IecO4D/HO3BvQd3p5sWczqTPYJ0GyVe+92uT6DGlSZFywt498eYslrWKqaJ9XNw
	UF1UVEjOPO3sDeAo0Viy8gXN847l1k6IRL6k+UNvBcO52KOHNK520w6PxM4bLaGZ
	rlSQYjo5uvOa7s4aB/+g0Hn/ufgqm8DFFwxGLD4hiu68PYpHzVWoI4Pqa0VP0GOA
	t17ZMFdNWnqwaygULCK2n6sPWNZXeEOl/qRggYUVlbcu4D/HK+clXMNlcNUGR9b9
	Gt6EDyICndO2DivW14Lg9oinuy4h8u0f3G3jqaBaR3BtZyKU0G/W5V83fG8h4LCG
	lrf0jQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fny9wj8db-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 13:56:58 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c21be5bb4so3192641cf.0
        for <linux-phy@lists.infradead.org>; Mon, 27 Jul 2026 06:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1785160617; x=1785765417; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=a2ecVVAzl7ah2+cxH73covTRhLHYFzycBQkVNDKcsK8=;
        b=QZun8nBqoHMoy6LQCRBKKsiLdNReTHf0Q+S3AM0OE6GVEfqgXUnCWjFVsvbnq48lMO
         PS8O1m2HBYs1boaV/u9LRfQWCAJqTmKQi3n6e0NdJOmIXvzKeaBUyJ4gryzOvoqDPGmR
         cfGHuwNkB3w5YhIYJeHVKiLI9YrwE8XVI50r7ZmJhp0R8SmcbuD1Jt0uLcVYvTFGh4a1
         cOWpC57Y2MsqsHFnW/HXSMerdVs6lK3pAjG+OIT5oCV7rHUfxZcHbE9VUMNdHWa3PJ6f
         WbCUi8tMCdlSRSPMTaB/QVpCszpavpqHKbU2HR/MmEQv9NkNkNUNhsPjFQx5WmSDUtsY
         BeAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785160617; x=1785765417;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a2ecVVAzl7ah2+cxH73covTRhLHYFzycBQkVNDKcsK8=;
        b=h2VvyEYN5dLEBfFR/1CBwiqJPsagJrRQOGSX61i/xvody1G3H+GktfBqnekAb//OEY
         QBXsWd1w4Fp4AKj1qto3GIkWyvvl1wsXGcQuwo8NDZgxxECIxC1tdWfiqwC/ts1VjYVZ
         M+SguWh4txImmiPQ2pmDMD+EGoGHbdtRfkd1PQV1h16P8pHEVzE7yYlc9qgG+QuLS1Rf
         3mDUUMsYpGYe1qaHplGN5sD3xPijZhZSEMv+ErzxaUW5FTzy2TTPWv+REvWrKj/DSyTX
         ViKbn9emFJ7VaCISe0ITI0hVibRQsJHY3b5qDEMjks2WhJEEUV1Llji7AqSS0sHgLlKQ
         qhxw==
X-Forwarded-Encrypted: i=1; AHgh+Rqf70Lt5enhc4SzM7MEKrHRsDYDo0hYkTFqZdFGKUerzQfM584XeFhKW938l+lMjj/DtGFVjqLn/nk=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVfJXKCOR5I/7RLTmXjaYEZxDdAdc66S6IjBZND5f5KziyQvZY
	rvWUrolIaT4N5gIrTtarbifwfzusCNrdARY5r9qhuaeiTV36RtHGVMevZE1q3H2/3BoZtQFfIza
	Or5fCxOg/oeyQiFahNWBTaoCsM64VAFaA/5RfIOp2X/y6i8AGBSFdjPX2BklHDil99sqQ
X-Gm-Gg: AR+sD127kSxOrrt2X7NutIxgGrmuc83Nsz24PrkBhk3mIDRTpI79tgMFN1CSrfjkY+4
	xe9VoktlgpV+DtLVy+ceOUjYFuA4kFLuME9+TiKfVcafy7Py3LVAaaWpP7m7Hextw4uuNVuykk/
	kbydw9ZAhoVtY5tmc+eieD1TIOB3T1UfJAA+sJl2kfWlcytpT7aM77FAOl9VXOQoQxbuKEiQRA9
	POGI2PF2QDUgd6xVF8VZuKOFb7m64J2BfQH9FlEYRYpqa+XmevGmMWfuI/EivztqXuWWARIaeGy
	xAUBNi2CIZJviZpOFi4RUBPZSJDrKEQxNOnrVoq2HOfSBeH6VHQDUpwL57mNOS3TlzBybPejmMC
	ogd7GvFwnm/s/+n2xkuo9McVV
X-Received: by 2002:ac8:5981:0:b0:517:5d21:9899 with SMTP id d75a77b69052e-529a85f9b2emr122121611cf.5.1785160617498;
        Mon, 27 Jul 2026 06:56:57 -0700 (PDT)
X-Received: by 2002:ac8:5981:0:b0:517:5d21:9899 with SMTP id d75a77b69052e-529a85f9b2emr122120981cf.5.1785160616824;
        Mon, 27 Jul 2026 06:56:56 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69fb50bcfdcsm2876913a12.3.2026.07.27.06.56.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jul 2026 06:56:56 -0700 (PDT)
Message-ID: <3b0166c0-e1e7-4746-bcb9-ef78b9a86c8c@oss.qualcomm.com>
Date: Mon, 27 Jul 2026 15:56:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/6] phy: qcom: qmp-pcie: Add QMP PCIe Multi-PHY driver
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manivannan Sadhasivam <mani@kernel.org>
References: <20260724-glymur_linkmode_0724-v7-0-65c8469c6b65@oss.qualcomm.com>
 <20260724-glymur_linkmode_0724-v7-2-65c8469c6b65@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260724-glymur_linkmode_0724-v7-2-65c8469c6b65@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzI3MDEzMyBTYWx0ZWRfX5/+1ZXhOIumk
 sX94lSbYo5rCxwy4dBULxoJp18cdHnB9mrtDR09gWaJdbmNChiGgABZqG6/JuBAbW41/VwQcUGc
 VigS76IlsGkvAW2WqGxEoFBANzyvvPDlqykobULb9tbu200Aj33VlIh80enmGOrxLMUn8j0b2R1
 4mrVYCyXIYicnQsHMXkQ+0vsjiKwccfY1SCm0A2m0EhwXQ9GtPIpObdb/WpdDvVZ5pXRsj3jDsN
 hIEkcVlxurXbumbNm/vVbPeEMqiL+BxjMPcLJJEowcQu/Xt0uJO3WJRrmrGbs3WMr8VVt9xqPRL
 yMHuoRVUE6SQ5PZ+XbSHRszMA9qzR4yMnzbMnBGwN04krvnc2Rmj+zupY6rKAnkg28HsuTs9hjb
 GyF6Pu6VBiJk0KGBx8daM/TTbBISSHlycwuE4HciOkziP05MCJNYgjpEJSL2EjZiwY4BLWAxe0c
 f9WTn99wAz14/tXwCVg==
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzI3MDEzMyBTYWx0ZWRfX6vgwJJPzt7VR
 LWkR52vFG7BoHJx/9cc3NzAposY4nLlIhiFMrVLMnOoTHwNATHJLilRis1lMfn7H/6VlR+YYRsj
 84EBxdwFewH75TnKJ8mb78j6DYy1I9s=
X-Proofpoint-ORIG-GUID: XX8LFhRe-P_CHePlIh2FwZdlEYsdvONv
X-Authority-Analysis: v=2.4 cv=E4b9Y6dl c=1 sm=1 tr=0 ts=6a6763aa cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=fUhyWj0mt7oSvnhCvGYA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: XX8LFhRe-P_CHePlIh2FwZdlEYsdvONv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-27_04,2026-07-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607270133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_145704_450231_DC782BDD 
X-CRM114-Status: GOOD (  26.04  )
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

On 7/24/26 12:01 PM, Qiang Yu wrote:
> Some QMP PCIe PHY hardware blocks support multiple link topologies (e.g.
> x8 or x4+x4) selected via a TCSR register. The existing single-instance
> QMP PCIe PHY driver has no way to model this: it assumes a single cfg per
> DT node and instantiates exactly one PHY.
> 
> Add a dedicated driver for this class of PHY. Match data carries a
> per-mode cfg table; qmp_pcie_multiphy_probe() reads the current link
> mode from the TCSR register pointed to by "qcom,link-mode", looks up the
> corresponding cfg array, and instantiates one qmp_pcie per sub-PHY
> required by that link mode, registering the clock and #phy-cells = <1> phy
> providers so consumers can address individual sub-PHYs by index.
> 
> The driver inherits the phy setting and link-mode programmed by firmware,
> so only the no_csr reset is used and no phy setting tables are provided.
> 
> Add the first match data and compatible, qcom,glymur-qmp-gen5x8-pcie-phy,
> for the Glymur Gen5 PCIe PHY that can bifurcate into two x4 links or
> operate as a single x8 link.
> 
> Reviewed-by: Manivannan Sadhasivam <mani@kernel.org>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---

This looks really good, couple of follow-up improvement suggestions

[...]

> +static const char * const glymur_pciephy_a_reg_l[] = {
> +	"port_a",
> +};
> +
> +static const char * const glymur_pciephy_b_reg_l[] = {
> +	"port_b",
> +};
> +
> +static const char * const glymur_pciephy_reg_l[] = {
> +	"port_a", "port_b",
> +};

I think we could construct these names at the call sites, with
essentially something like

for (i = 0; i < qmp->num_ports; i++) {
	sprintf(buf, "port_%c\n", 'a' + i);
}

(is that too cheesy?)

[...]

> +err_power_off:
> +	while (--i >= 0)
> +		pm_runtime_put(qmp->pd_devs[i]);

This probably can stay non-sync

> +
> +	return ret;
> +}
> +
> +static void qmp_pcie_pd_power_off(struct qmp_pcie *qmp)
> +{
> +	const struct qmp_phy_cfg *cfg = qmp->cfg;
> +	int i;
> +
> +	for (i = cfg->num_pds - 1; i >= 0; i--)
> +		pm_runtime_put(qmp->pd_devs[i]);

This should probably be _sync() as phy init/exit may be called in
quick succession

[...]

> +static int __phy_pipe_clk_register(struct device *dev, struct device_node *np,
> +				   int idx, struct clk_fixed_rate *fixed)
> +{
> +	struct clk_init_data init = { };
> +	int ret;
> +
> +	ret = of_property_read_string_index(np, "clock-output-names", idx,
> +					    &init.name);
> +	if (ret) {
> +		dev_err(dev, "%pOFn: No clock-output-names\n", np);
> +		return ret;
> +	}
> +
> +	init.ops = &clk_fixed_rate_ops;
> +
> +	if (!fixed->fixed_rate)
> +		fixed->fixed_rate = 125000000;

I think this always happens to be true in this driver

[...]

> +	num_pipe_outputs = of_property_count_strings(np, "clock-output-names");
> +	if (num_pipe_outputs < 0)
> +		num_pipe_outputs = 1;

This can't happen (clock-output-names is required via bindings)

[...]

> +static int qmp_pcie_read_link_mode(struct device *dev, unsigned int *link_mode)
> +{
> +	struct regmap *map;
> +	unsigned int args[1];
> +	int ret;
> +
> +	map = syscon_regmap_lookup_by_phandle_args(dev->of_node, "qcom,link-mode",
> +						   ARRAY_SIZE(args), args);
> +	if (IS_ERR(map))
> +		return PTR_ERR(map);
> +
> +	ret = regmap_read(map, args[0], link_mode);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

ret = xxx()
if (ret)
	return ret;

return 0;

can be collapsed to simply return regmap_read()

with or without all that,

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
