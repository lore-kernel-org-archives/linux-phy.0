Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0CEAAC5DF70
	for <linux-phy@archiver.kernel.org>; Tue, 18 Aug 2026 09:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZ+6dP2+4OaWXT+3vHfBwMGFHFAJm2EieZN48IezWak=; b=uRvcLsAx9aknV0
	Grxy7FqNRz5Gh8I56ARngMHJTBYMNY7iavIs1gv7qGFNq1iSgBTL2qiwDT4CsJDIP1E7L2H9M34ej
	5t6/eEFbxrTosZgIvsSZZz2XdGTQZoif8ApWpuN/+rjp8GuzHLle0l2pAQGbMpT+UW3BfgupZDIPl
	c3ja1Wso2ZR2Te8KorMcm2NFERzRZkN1+4fgrjxtGuYxikaQwzO5OEd2I/2usS6Gap8hDcfXGZTVI
	tAc7+UFFlEiOPB87Zlj7/f37vZ/DKDBrQuNU0wWCXcoJhvPosjmIWMUyc44RCaRnVK/0amWy8590i
	a8qHXGYcTwgxiLOcw/Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGXK-00000007g7Z-369a;
	Tue, 18 Aug 2026 09:55:14 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwGXI-00000007g74-35oS
	for linux-phy@lists.infradead.org;
	Tue, 18 Aug 2026 09:55:13 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67I8BQl83991346
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 09:55:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6JfeiagCGXExL9jPLVYU4oyP0ixfW6Wo8aIWlrLOri0=; b=ZpjmYld7AMP9ZSy7
	xWnL1sO6gTN3wzp4BAEoeLdFKIacYJZ27ojLid9WHJLUdr5FJr+Itu/HUuLEd6DJ
	NQLKxhihJv9lYvUmmZq2F16j/GBSsEEI4mjmmkZpcVSD96H3SUsF7BckO/Z8ms4X
	lE+gG+N7wgJt27udUXq59hrdjJYD4NMuCyeMRf30S5Wiweq4DnIgCAzniup214Mf
	8LFtG1H5XFFGFebPUnyaXPHk3576+Nutgwx85hLbHwcEMAtPjvVmOY5YmbKIRUl+
	QBXFt4wWCkEn3KhqNe+Y4G3aHS/9JUHFuf7ouQyUScbjKHNP0TR1cG5MbdN90Jj7
	r7iJQA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g4f5psku1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 09:55:12 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-52d5892ac86so1961531cf.2
        for <linux-phy@lists.infradead.org>; Tue, 18 Aug 2026 02:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787046911; x=1787651711; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6JfeiagCGXExL9jPLVYU4oyP0ixfW6Wo8aIWlrLOri0=;
        b=TmacoASHJgpRVR9KR+uily5kPFm77EC5j8ZIPcLwrUaNH4NPQzvBGrQSZI2J4DVp4C
         CWtg109wzVgbX0krlKv594dQXBRihuxKaXACjpIsrSqSy7UZt1syy28wKCoNzkp1binc
         Fxg4XT9s5SP1mS0ATP9Kp5xfEQv1teJvWQQT5V7gdnUJVj/Nvu8j/EWOunX/QPvRbAX+
         VYpyfkoC8sxzpzG39sW7IHibiJoCYNauf/KBW/8FxQdrasR0qJCCDPJ8J007CsR1UsLW
         5AQ9ZtdnQysghD7bND+WUIzI0gAbdTrd663Xls/j9KIAmegoUR7/xtHhx9a1apXrKEcA
         H2KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787046911; x=1787651711;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6JfeiagCGXExL9jPLVYU4oyP0ixfW6Wo8aIWlrLOri0=;
        b=QA9YyoVe2LpS1oRHO8p73EvDh7wynIImgYxnRDyqWV/5Pozt8wYuOtvmzZIOs/F9tE
         s8H2BkAuOW85/B6YJsBAB/jY5GoDSIzruG7zdPcKh1h0Tz97KnNYGSA1RJEUm6aJHlRh
         C0BZ55JtdR2pX99lQG7zTPQwXnrfkbktk1/XRMYBMICbY4mwrSHypfF1CAYvjEAExkPu
         vYQ3hMcSnbuzpPD1I4gqsFM59ItSQN/RrQgXpVjsb/o+rM7GBRx9qAm6qj76B9Rd9P59
         goyWiPqHNsrhullUhTfrDdKmWAtGQw+nyQbt3fdapi/mvEw9coBz4r1yKxdCsPBK8C+D
         +SKA==
X-Forwarded-Encrypted: i=1; AHgh+RqqcflDzEZqrNTZZnWii1Z2BLycAa7o29RfyJqDJXR8vPOwy7vc7peCy3S/5Yg0OX+Ax2d6wknXeps=@lists.infradead.org
X-Gm-Message-State: AOJu0YyU701bPdXmAzEmZt3nx98nyUVxQSYl7N3K2ZZB4+w7sarheyys
	B/1fJzH8B96l+Dv8WFhH3u7WIEDEcALm7kkCsfhWzeNm25F9u9BYBB0tQVRvfGPG9T0J9Aujma1
	6cL6gP/2f0qTPgxl1kuhgvOs4uqODpK6Yha10IMzfzYX0FsvUKO+wn9PiCBE2rTlz/Btn
X-Gm-Gg: AR+sD10QPvi4b6VWGwoJpL/URdL5R8/zP8YazaHs0nK3xIDzp9VYOLi35UcaetOFnLV
	nrUJ88RtKY6Wl2eo8LB6gtsJcoNp3GRz2tw/sX9TV3wCYX4wChdKU0GV3/91mApRqmNZgucUZMH
	WYSyHnH5GTvnp1Wr+EBh8y24oEdBKmJjt5inycptCxACgDt0SPOaJt5MovGWIoSjHUtNnjsy4h7
	GhIQjCyYBW/vvdVa0/kRKqCAMRfVGmZCzYbCw75eThO5Gj6QeanAu1foSYMy4X8PriCXYN5SL59
	FOSev3/UGfiAKFCsYhLG/GCuiKrTtgGWC/T/77PpW/n13lO0OIWnx8MRXgLfwrd8wInkkPQKcJA
	dFhd9Z3CVYbYRZimTp/HPp+th
X-Received: by 2002:ac8:5fd1:0:b0:51b:8543:cbbd with SMTP id d75a77b69052e-52d852d1178mr235156431cf.1.1787046911160;
        Tue, 18 Aug 2026 02:55:11 -0700 (PDT)
X-Received: by 2002:ac8:5fd1:0:b0:51b:8543:cbbd with SMTP id d75a77b69052e-52d852d1178mr235156071cf.1.1787046910745;
        Tue, 18 Aug 2026 02:55:10 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2185b9f47bsm126108766b.52.2026.08.18.02.55.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2026 02:55:09 -0700 (PDT)
Message-ID: <23470e04-eea2-413d-b055-7451fdfa65e9@oss.qualcomm.com>
Date: Tue, 18 Aug 2026 11:55:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/10] phy: qcom-usb-hsic: do not run the sleep
 calibration clock
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang
 <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
 <20260810-msm8974-usb-hsic-v1-3-e5f93ea76ffa@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-3-e5f93ea76ffa@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=S+/pBosP c=1 sm=1 tr=0 ts=6a842c00 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=-c7pCBK0zC3Ie-k0gBAA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: jUCAOhUcyJ8Ooq6q_rjWXCViDETXNqHA
X-Proofpoint-ORIG-GUID: jUCAOhUcyJ8Ooq6q_rjWXCViDETXNqHA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODE4MDA3MiBTYWx0ZWRfXzTCjZoIVLsPa
 rGDT5MxwgvOBGZDvArPDurfperkSCWKcI9uSkSHSK8YezyLw7lzcC+IB0tSKg3OhNE/crbaOACy
 9LJifCkXVNLLw8Vat2wXR1bcFYeJmuEICFVlh8Chvh4h2z4FnbRDbkkGSQ9OsF/05tf2Z90s/8m
 sbnisV3qyQzqW6hkSZXeC5Ag59wBZWDyAd2tq7ewha71aIdMQcPNyukgAesMBGdAY1jo7EsiJSQ
 ZICgMNeFP0EnksfNBCPg8oQSkQNKbVkSK9Kb2cGMi5FdFFDlK8PE+txJtL5j14YMd4GvQWH1t1R
 C8cWpP0aNkF3ByUwAcNF/wGIdE8v8zpMFlKrZzxDH7Vn1MMuDlrHMv49ukFWs2Y8mDV53hlapcF
 NRFv9EOCGOWMXTWiCtL6CyXW6dVlupctC/VDfjHJj78fd63JYEiYkNJUT7pZ/V9nE1YsDjYH1Pr
 DZ3Z0kXOqUeIEAKTZ3A==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODE4MDA3MiBTYWx0ZWRfX5E/EfDm/hQ1V
 nyWTYXtv447JOrg3FQTLyCbd2AebmNR7krvbbDWMpwfSBlbNnj7Z29HYYKWws2M2SZpaf+jbzBP
 XmbX+65EZyTCBKH/IRue694J8bQqK/c=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-17_04,2026-08-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608180072
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260818_025512_786847_C74E0D5E 
X-CRM114-Status: GOOD (  13.26  )
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

On 8/10/26 5:42 PM, Dmitry Baryshkov wrote:
> With the cal_sleep (32 kHz IO calibration sleep) clock running, the
> HSIC PHY engages its sleep calibration: the strobe/data pad
> calibration converges to different values than with the active
> calibration alone, HSIC_CFG reports the sleep calibration state, and
> the port no longer detects a device connect - an onboard HSIC hub
> signalling its attach after reset is never seen (observed on the
> APQ8074 Dragonboard against its USB4604 hub, by comparing the ULPI
> register state against the vendor kernel, which never enables this
> clock: with cal_sleep enabled ULPI HSIC_CFG reads 0xab and the pad
> registers 0x0f/0x0d, without it 0xa9 and 0x10/0x10, matching the
> working vendor configuration).
> 
> Stop requesting and enabling the cal_sleep clock.
> 
> Assisted-by: Claude:claude-fable-5
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

it seems to be used by the slightly different xhci-hsic driver for 8084 

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
