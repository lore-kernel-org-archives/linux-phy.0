Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4171DFE5202
	for <linux-phy@archiver.kernel.org>; Fri, 24 Apr 2026 10:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IfWatVYWGTMb2SX50LHNKfvoRZjIZS2eALnpGJS4fpE=; b=wk/kRLCnNLbFhc
	9gae05WsJ+ZUKjAkY3u28l5ETLUxSR2/dcHFwSwtp4CKzTqHOnqM251BHMFSLFKUR0bV6H9ZK+mn7
	6NRSr6TeFFpCq9Q55BqAP0lMTyyhDqm3sHsKDgrCenkIJgYe/nolORglCsbeBGA6U5lsNW3vZrcR5
	o2twHLhzeYom1eBVFrnSecm6PIf/1+nm0uxdpN3uC1Aoxi9ppAMPfA/O3akBhUZ3bd0etN8IT5q0m
	3sOTr6tW3A55pckJqLRPwiHx/+0q9IN5mXRmxRB6q2CdxzrH35pcxmDxk1JEgruVw+QH3VKq/EF43
	5EX8Z/yV13mRvwsW0Cfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGEFU-0000000D3vy-3VN1;
	Fri, 24 Apr 2026 10:59:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGEFS-0000000D3uz-1YRT
	for linux-phy@lists.infradead.org;
	Fri, 24 Apr 2026 10:59:03 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 63O82g6Y1888414
	for <linux-phy@lists.infradead.org>; Fri, 24 Apr 2026 10:59:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	53ASJo1GxCRSOJhL4iV96kkrerGgRf8DfIhzfgftXTg=; b=Bbv8eb4aR4PzFDVW
	hrnB6W5hD/XfzoBWLEGDhbgX0bf67OPnAlaWWuo3HNYFCWI7FIQI7hD7mTDsHMFM
	YBgztv39+nm7ngkigwPmx24Y79MKgUnAe9YvxkoDv+X2NBfmZ8TVmdXftqLkXBTt
	KHo+tcaNqapDVTtflDcBWz3l/+dhz3U/6RWft/wOQyCDCDvR4I9VuNHktF1uufoS
	9w4HMVZcLHwY0GJTlwK6Zma2mxwI2WouWq5axKJpLYp9dn2xiybXtO4jPYJW/stf
	2h3DmiNI5+mE9lfW3lYM57iRntvHCf6zJOBCfkO7NEGdSXBsLnbghwXXCJF9n+1w
	yJYMgQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4dqp9dv861-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 24 Apr 2026 10:59:01 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8b207ec027aso5301116d6.3
        for <linux-phy@lists.infradead.org>; Fri, 24 Apr 2026 03:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1777028340; x=1777633140; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=53ASJo1GxCRSOJhL4iV96kkrerGgRf8DfIhzfgftXTg=;
        b=gE2tO645zeOHJjinDTN07mcaRbXWtGiLAP5jGHDaK9T8JHf42RLVhwD9xSB76GPrFq
         7H6QKY4ixTrsH7oxViDNORRd8EiAfxMCYDkUf78O4eQ/ee2h1X4OMKqUnrg6SMuAtKj3
         BDUEe2UxFXci/5IhNQd5a2a0uIfkxj3TiXPn81R9i7DXyaK4b+YpRSFqqabTH0F8zq9f
         IGOJP/a6X0zd5rOsKo2eE/TbhwNoeuAsQg7nWOMbsv6sSmyveE7C0sI479vGWVYXDLUX
         fdugY2TnkoHdfdBCTMDZXrhFzmcXSvPJmH9D5gmkba5mBgOseppgbz3/GAqiI0n4Nue7
         +R7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777028340; x=1777633140;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=53ASJo1GxCRSOJhL4iV96kkrerGgRf8DfIhzfgftXTg=;
        b=P9nf93OqMX9eDkWLl2nzIDU/CZ7Tt+ynBOw+IqMYL8vY+k6moawEJvs5PDHY4ahU3o
         IoZo8xEEpOnm9lNuvjf4NdGIXD/cCXTOijHkaK7UalmUGOt3tUFhoLOJ5JsKAltCLWH8
         UOdRqK1mkpyoCTufkkRnWl6oo82pVyiXZK2R7pADZncODPLyb/BgsB67EwHLpoLtCPqT
         cMDjR+Poh6m+C5L5ObDwBFDppHYo/akpal4MbwjnD0nnSXYzvG723VD69/KVNCBgvgUu
         bO1A97RyUpfwH004wix+A4zvykLeOa8jG2IcrB/QWEBrnHx7Ibs7vLQzhlz5mwFiefs+
         19ng==
X-Forwarded-Encrypted: i=1; AFNElJ9spB0trcVR9KbfXqbr1aQTv5Gjd98Cu8frfHtb1bxq8T8EWegu0GiTIZ9uU3zcJrQtyPRWbLcT9ZY=@lists.infradead.org
X-Gm-Message-State: AOJu0YwlOmLnndxP9r1ciw+QjW4QNAqSLRuJXozxfr29NVF1Bk3F9dIG
	IAGUh/NPGhjuHW9TT3A+2up2F/MGOHu3fQbV943/4HxDyqZTaPqYG9frAIzd36vxeQWqmJbCiyb
	dKQcva/mdnflav83kPgmi89aFWxXorK6XabwqPlCMhCzvm5SRun3/caEE91QXx+d5Ss4p
X-Gm-Gg: AeBDieuqhxO1ofuYbYVJIc7hugET5JAvAFQ2b+8UxetQdn4/UNYi9QavS+IhoP44r0r
	+PxKPrJ1x4bpTVUbGUEki2rZ4jKBG8jWVqKe9aVlXhbjSjQkmDj7EC+WMZMwTqj/tFwqTbpNB41
	7Pdo4IGOC1vZ0tpahjl/kyLPXMwnC1MWtFZfYtxs12+aJ966UoJGkdSms2YxeqP7FMkxEJKESEd
	tmpTFIQxkok+0/S2FwxR+2cLJB0TEeiTpHRfN1ofCuAfZuaewqv529uOqGTv5XZ3C62WHJb3rwQ
	yT4kf75PaW8QXi0bbUYB35R1nzXTv3KFApdZxVSyx2XIbIFdj6pPUFIOPluqh7S+LtPkqeox34Q
	zQNKM0Ix83D9oGGHZBaZsyO5s5Rcn8Ho87OQo3wh1CkKBF/tcRq0Y7gVvSxjGuuWdiayzRGPiFV
	jIWq0ZEgjNNhbZaw==
X-Received: by 2002:ad4:4eab:0:b0:89c:5159:ea52 with SMTP id 6a1803df08f44-8b028181327mr343234206d6.7.1777028340454;
        Fri, 24 Apr 2026 03:59:00 -0700 (PDT)
X-Received: by 2002:ad4:4eab:0:b0:89c:5159:ea52 with SMTP id 6a1803df08f44-8b028181327mr343234056d6.7.1777028339983;
        Fri, 24 Apr 2026 03:58:59 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ba451210e26sm772516066b.8.2026.04.24.03.58.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2026 03:58:59 -0700 (PDT)
Message-ID: <22b97f4d-ea71-4838-98cc-470dbca728c6@oss.qualcomm.com>
Date: Fri, 24 Apr 2026 12:58:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] phy: qcom: qmp-pcie: Add PCIe Gen5 8-lane bifurcation
 support for Glymur
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260304-glymur_gen5x8_phy-v1-0-849e9a72e125@oss.qualcomm.com>
 <42a9dd4d-eb96-42c0-b836-dcd7cb9405ff@oss.qualcomm.com>
 <aaqdv7Zx5AODzg6P@hu-qianyu-lv.qualcomm.com>
 <fb75023e-8fac-49c1-a8b7-2eb8b70fda3e@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <fb75023e-8fac-49c1-a8b7-2eb8b70fda3e@linaro.org>
X-Proofpoint-ORIG-GUID: ehxG6y1AuNJLreaF1rx3F1sVto6L0zX5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDI0MDEwMyBTYWx0ZWRfX7rkp2KXjE8yf
 DMZcsz1Fl9bqt30jK6yk0IcTvf5FabGLOryJWehLnx0KMKuqcPiiqS8JS2SNZ+Lyy479ODXqH0m
 cu7Mcj7+QjOSiN7AHV8mCTG5jB43EdYtUkQK92Iw38Ez11uFkdgutdekplcnj/OKUfLudN/pvkm
 Ll8LYJvVFPnM5cJedteMffrlNdgTgMCy5jHCShNgpuuynILR6rgd2dRSJl6iLztOW/9JYG47Uo9
 MD0bGjwXE9YCsnMrnebgaGofl6xvk60y1jS1i6X6257e8L2EJF9HUEKs7UqFEznIKAI3UWG8E1M
 Z/eP1pCEvnVH2uqgKqjtN77FeNE301FkG3MsKssGICuHIQvS9VYzN+W2Eh4jPOHdvwVjB1Yav35
 KqQLE0AYjhF4ZqrFb4YZZcFquykHVOATUddm2q23vA4J/Q5Xp1RtBIjdRsCCYyd0JpPxbj8uE7Z
 ZQTOFIaEMZqEWUnCzpg==
X-Authority-Analysis: v=2.4 cv=fP4JG5ae c=1 sm=1 tr=0 ts=69eb4cf5 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=Btiq9F5UgLBRDrkW77oA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: ehxG6y1AuNJLreaF1rx3F1sVto6L0zX5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-23_03,2026-04-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 priorityscore=1501 adultscore=0 suspectscore=0
 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2604200000 definitions=main-2604240103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260424_035902_534890_63430025 
X-CRM114-Status: GOOD (  13.20  )
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

On 3/6/26 11:34 AM, Neil Armstrong wrote:
> On 3/6/26 10:26, Qiang Yu wrote:
>> On Thu, Mar 05, 2026 at 10:14:05AM +0100, Konrad Dybcio wrote:
>>> On 3/4/26 9:21 AM, Qiang Yu wrote:
>>>> This patch series adds support for PCIe Gen5 8-lane bifurcation mode on
>>>> the Glymur SoC's third PCIe controller. In this configuration, pcie3a PHY
>>>> acts as leader and pcie3b PHY as follower to form a single 8-lane PCIe
>>>> Gen5 interface.
>>>>
>>>> To support 8-lanes mode, this patch series add multiple power domain and
>>>> multi nocsr reset infrastructure as the hardware programming guide
>>>> specifies a strict initialization sequence for bifurcation mode that
>>>> requires coordinated multi-PHY resource management:
>>>>
>>>> 1. Turn on both pcie3a_phy_gdsc and pcie3b_phy_gdsc power domains
>>>> 2. Assert both pcie3a and pcie3b nocsr resets, then deassert them together
>>>> 3. Enable all pcie3a PHY clocks and pcie3b PHY aux clock (bifur_aux)
>>>> 4. Poll for PHY ready status
>>>
>>> I think we never concluded the discussion where I suggested the
>>> bifurcated PHY may be better expressed as a single node with
>>> #phy-cells = <1>, removing the need for duplicated resource references
> 
> DT requires strict hardware description, no abstraction for HW, so if there's
> 2 PHYs, then add 2 separate phys and reference them from the PCie controller.

A single device *is* the strict HW description here. There's a single
shared top-level set of controls (mostly in the "COM[mon]" block) and
8 PCIe lanes that are (roughly speaking) unaware of what configuration
they're in

This is very much analogous to the USB3+DP combo PHY, where the USB and
DP parts are reasonably separate (you can turn the USB or the DP part off
independently), but those are building blocks that are sort of just two
"front-ends" to the rest of the QMPPHY hardware, that process data from
the otherwise unaware pairs of lanes in one configuration or another

Konrad


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
