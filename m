Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D08B2606A33E
	for <linux-phy@archiver.kernel.org>; Wed,  4 Nov 2026 23:00:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jVN1z47l;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=O6BGli/H;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=OjGflNkZ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pu3/38nYtzwBsqtpidFqor6UN6LVf/Kr9X7xOm/+P8M=; b=jVN1z47lM8CCTleQyiebDiHfk3
	jUtyDo/nAhAhhz8oRu+SqwiPNHw3HU76WHgAN+tsui5U0LCA4TaOY/yEYYn8PvbhN7Jm7q5M9Oc8m
	vT3f+GTxjmYQXzj2NrFbaKcseizpRue5mgW+U0s+3d41O8aOzD7uyGToxCn7bihkuZyybQUVvvrxr
	LMTGFzFPrKVeek1q7SaDPzRthpYPYiR1cmybV9nro5aUxQSCnDlXXfKgRu+79LXWYq2j5yV1NwdnI
	vF7uROJHplmVEyRmur0q09EJEAckoSIpMJpswlu5J16Dy4lrcG4BygX922kyCiatE62PJ9qFnEv1Q
	HutfozYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOjyT-00000007Cvh-2Fvt;
	Wed, 04 Nov 2026 23:00:57 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOjyR-00000007Cuy-1IHj
	for linux-phy@lists.infradead.org;
	Wed, 04 Nov 2026 23:00:56 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A4Lo0tL3272833
	for <linux-phy@lists.infradead.org>; Wed, 4 Nov 2026 23:00:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IBnwuUwFwWPHj2qGKuZXR/Fn/5DPhnAAWQsAJFP7dnI=; b=O6BGli/HIIDofw67
	rFsGgLtdJRCXoEeKzYo+hW4Hh/+ESmUI/61hl2a32FI3wQo0B204FbGWdZCEgSfx
	R7Yso3POoccwvj88TwcTNhGbBGLUAcXof+4KaNXqqphJ3LHGU2Jays0rgeHs9QV7
	jtdag5gRCyqBBYiWubLFbXNkE/Of+86wInhBxp5jq+VzZ0+B+py/7IEoj3AlNUXx
	/Y2b519enVLbpEYmZzmRnl46NuSEOxvMBqNAhQBp/AWv0HB0LTvZGBX2NscBrXC0
	pdSgm61w/feHrG6yq/6N5z8UxShVNs3t2scGaKsub1gx3ChDfA0xLA0zp9JO32yN
	AGHRlw==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hr6bnj2k0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 23:00:54 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-30bcb065bfdso2167814eec.0
        for <linux-phy@lists.infradead.org>; Wed, 04 Nov 2026 15:00:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793833254; x=1794438054; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IBnwuUwFwWPHj2qGKuZXR/Fn/5DPhnAAWQsAJFP7dnI=;
        b=OjGflNkZVRDxsfABpeRZEMA7FjSthwiOg0DSfmF4+OoWNtSz0256iOtapXAnQqNMiz
         jQbXSE79LiYVcYfrF7nbDLr6+iMEtoCAahQ6uPZ7fLMfCJQcrymsoS1Vhh1CWjuYI7gs
         4KjqKMp5KLDJWE4K6WTZg8x592olx9GUsSMal72ewwSba1rP4w/ef68I1FYK9607rQzg
         Wuyma8Pcwq0WzvglpCyBCs3iTtgcZgMdnorqA5BtIrbtiTtNYmPHJPfssEBJo1zkR3tt
         3bFyHA3jZ73MNfmcmGn5LeWtuVaGmTc7EWPo6dSSI3NUBEGPKIU+za0BVSOVnleMDPu8
         /VyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793833254; x=1794438054;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IBnwuUwFwWPHj2qGKuZXR/Fn/5DPhnAAWQsAJFP7dnI=;
        b=vvUSYp57EY1htihk9EH+2XKj2v5F3BWqUJCQww0cNni/TI3svL95DGVEYVe5sOJw9K
         Nr4W+zLh9TJmAMQFRQ1+Y1MRoSdexFryEj0PehFW44Z9mnj9JD0ww5xzdrn308Bb4Y1k
         M8U6RbuRHWyvCyHEt5tjm2a+Q0vw9FQM04Xuvya/TnWWdS71grp3YjZMNmvdR71U1XcI
         xn3PIigVIBkX47UlndXmZUPTip2r4u+z6+lHd6menLbfL8FBW19JcCAbFFx9VxiKGK3o
         zJZJ8lkGBwvimimuMYk+DjqhwcmDctcMrfKWo8ZB8GB5OFW5fzkYvR/aK50u3aLWIGz0
         V//A==
X-Forwarded-Encrypted: i=1; AKwUvBy3v0Px20DTlYBo9bxGFgxu23wYcDLM4WFWR8R0XfWS5fF7azsYiBWn72d0MJy/VAeZDXwjQIv9wkk=@lists.infradead.org
X-Gm-Message-State: APuU4Z+kP1Yub+lFxGO2c6I5s8S98f4hkCU/ZULjEXlHZZy5FE4lm9C4
	BUF0LUhiHh4mjyhjePY8jm/O4ySV36qzRw7VWPU31NIStMrK8kjqN6WXyrW9GymMjkByAl8MUt5
	O1px2Xt78nCj/C/cKSRA0IJI3esVlmDxArCF0oEh4ElFA7UjffCcnCRJXAgdzg6fqV5lX
X-Gm-Gg: AYBFou3yX6/lGzuqxz6BRBPKbR/IAU/BkSo4KXHCiNNBZU+HwYfV34NiMdeVwlqN5hZ
	FisaYFwu5lAu3SIo1YlXu8mQxpa87d/KBdD3Abl5guJt8jopuDyXOUG6FHGAo6uTxwaaPBX+5eM
	743b+Vcn7+jT+ZAzd2p7cbxFx8buRCBv9ZJwZ5SaX1/3Amadp/o7e/JkgUhRaokoOO7Z4CGgJJs
	cRMzxJFrp53BbU/2wt8uFn+wXMD9ZUOOpwib0LdwWGJAQsNLjzy7q945iMcAspJMcR/wH5CUMgt
	sy4nop9ipV8WFPAoUdwY8EZzSyYkzcNS4ZqpFuA2qBNLCotncH1vf6VIZWKYoQyFn3Qa1Q/S6JS
	sHhe3X/HViVRJ8ORxgf/mvpxcJVnrBB07bWFR1Mb2qWyH1Ck1N0BczkBc1k8xfKG3d1aiIZpZHW
	S9813ZQHo12vFTUsjwnZbPhEkhwTD1
X-Received: by 2002:a05:693c:69d5:b0:369:7c:bfce with SMTP id 5a478bee46e88-36a423c6223mr26622419eec.14.1793833253686;
        Wed, 04 Nov 2026 15:00:53 -0800 (PST)
X-Received: by 2002:a05:693c:69d5:b0:369:7c:bfce with SMTP id 5a478bee46e88-36a423c6223mr26622351eec.14.1793833252836;
        Wed, 04 Nov 2026 15:00:52 -0800 (PST)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-36ca39972d4sm17734198eec.26.2026.11.04.15.00.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2026 15:00:52 -0800 (PST)
Message-ID: <adf77ed5-ecdf-4984-87d4-a7f796b83c2a@oss.qualcomm.com>
Date: Wed, 4 Nov 2026 15:00:51 -0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: lemans: add CSI2 D-PHY
 common-phy providers
To: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vikram Sharma
 <vikram.sharma@oss.qualcomm.com>,
        Suresh Vankadara <svankada@qti.qualcomm.com>
References: <20261103221026.3662383-1-anusha.nandi@oss.qualcomm.com>
 <20261103221026.3662383-2-anusha.nandi@oss.qualcomm.com>
 <72223121-cb42-422f-8ce5-4cf9f41c5aec@oss.qualcomm.com>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <72223121-cb42-422f-8ce5-4cf9f41c5aec@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA0MDA5MCBTYWx0ZWRfX3nCAUhNblY1Q
 s54p8DaK3ShYyjkMBJRdSPODBtqw1ydG0F7fD3nNJJHrzot1OC4mif2faUiA2F1IiRH5mzpYgst
 O5Pj/qE70NKivA8U7Nrgm9Tjik/0GoJBy5HkM3O+G92z8vtmHIGJ2SG23cP8S+iOAcRAtE8fr+A
 MwuBn+y4F7V9a20+gO4zouhS4zSjlQqxsJI0jXQEdivQpzlfJEKfRg8hqpqzSTL+2KQyOoL8nlG
 nsNOOX7Ok9crcOntJP7VMklkUdPE3Esq3fq+8eB76jQiPwrqL3C/vU1VpQ+rBfs3r2rvLh9zlMw
 WWvnfDkKiHd4exWa5Zq9SA4vAHT4c/LYeLgleLFrkZwyd5JMqRCfvQTp4uphyYLzZgDlPslGbbm
 LOil0ZFH5sdeCdUg8irxYg+pNeD3s498KBQGBiyoRlcTNTJGC2hTzyoabTZMSRbPdmM3gi9+C7+
 9r8A8Z2ylZxOEo1rfZw==
X-Authority-Analysis: v=2.4 cv=KLLPn1Fo c=1 sm=1 tr=0 ts=6aebb926 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=YzLprhzs-1J5OMutLZIA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-ORIG-GUID: A6RT_C3q0jDKIsfScoxgU2TObL-wRgaW
X-Proofpoint-GUID: A6RT_C3q0jDKIsfScoxgU2TObL-wRgaW
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA0MDA5MCBTYWx0ZWRfX96Yz8ow3aYcC
 87EBpZiDpnkmUZgNfftTJMx2onv2Q6fiXANc5vlQQVjCZ9v8jCCh+R8Hqcvd/pVkVydNa3itIsu
 SxBprADvliuG0DrsHOuwHynJmRwiHSg=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-04_05,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 clxscore=1015 phishscore=0 bulkscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610300000
 definitions=main-2611040090
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_150055_379369_7191EC3E 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Nihal,

will drop a new patchset.

Thank you
Anusha
On 11/3/2026 8:53 PM, Nihal Kumar Gupta wrote:
> 
> 
> On 04-11-2026 03:40, Anusha Arun Nandi wrote:
>> Expose the four SA8775p CSIPHYs as standalone qcom,sa8775p-csi2-phy
>> generic-PHY provider nodes (csiphy0..3) at their existing register
>> addresses, each with its own OF graph (port@0 sensor-facing, port@1
>> CAMSS-facing) so camss_detect_legacy_phy() picks the non-legacy path
>> once a board wires a sensor through one of them. The camss node's own
>> reg-names/clocks/interrupts for the CSIPHYs are unchanged, so boards
>> that don't use a provider still get the legacy binding.
>>
>> The provider nodes are disabled by default; a board or camera overlay
>> enables the one(s) it uses.
>>
>> Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
>> Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/lemans.dtsi | 140 +++++++++++++++++++++++++++
>>  1 file changed, 140 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
>> index 1fdb72fa5518..2a30bf1c82af 100644
>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
>> @@ -5164,6 +5164,146 @@ cci3_i2c1: i2c-bus@1 {
>>  			};
>>  		};
>>  
>> +		csiphy0: phy@ac9c000 {
>> +			compatible = "qcom,sa8775p-csi2-phy";
>> +			reg = <0x0 0x0ac9c000 0x0 0x2000>;
> ...
> 
>> +		csiphy3: phy@aca2000 {
>> +			compatible = "qcom,sa8775p-csi2-phy";
> 
> phy@ac9c000 through phy@aca2000 nodes precede the existing
> isp@ac78000 node.
> Sort CSIPHY nodes by unit-address numerically.
> 
>> +			reg = <0x0 0x0aca2000 0x0 0x2000>;
>> +
>> +			clocks = <&camcc CAM_CC_CSIPHY3_CLK>,
>> +				 <&camcc CAM_CC_CSI3PHYTIMER_CLK>;
>> +			clock-names = "core",
>> +				      "timer";
>> +
>> +			interrupts = <GIC_SPI 448 IRQ_TYPE_EDGE_RISING>;
>> +
>> +			operating-points-v2 = <&csiphy_opp_table>;
>> +
>> +			power-domains = <&camcc CAM_CC_TITAN_TOP_GDSC>;
>> +			power-domain-names = "top";
>> +
>> +			status = "disabled";
>> +
>> +			ports {
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +
>> +				port@0 {
>> +					reg = <0>;
>> +				};
>> +
>> +				port@1 {
>> +					reg = <1>;
>> +				};
>> +			};
>> +		};
>> +
>> +		csiphy_opp_table: opp-table-csiphy {
>> +			compatible = "operating-points-v2";
>> +
>> +			opp-300000000 {
>> +				opp-hz = /bits/ 64 <300000000>;
>> +			};
>> +
>> +			opp-400000000 {
>> +				opp-hz = /bits/ 64 <400000000>;
>> +			};
>> +		};
>> +
>>  		camss: isp@ac78000 {
>>  			compatible = "qcom,sa8775p-camss";
>>  
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
