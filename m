Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2F7606A31A
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 09:37:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=JSZERSyp;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=BCOwcxZy;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=CU0Q/UTX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=60PfiTjL6itqPrd92EhHGRUUy75WbpBNjMiVmB7zuIs=; b=JSZERSypMiqzSKqg8myjtMLiDY
	ng2W2RvrYHdYi/dEf5jOLymIdTuLfDaLsR+LhbMqEklMevEN4wrPfG6pJE25xio2cEC/vV8lkJhtJ
	7+kJpbiK5rxWDY26bB4MxHSIQ27iuodRWVa6NLW9pjFEot98BFXA5nOHrdSOJG4F7jotGzSVy3wnl
	8JGF+HegYGjkydNqeZLQdSehFpLA0VR7UjSSuk8b8ng4syxyLI0cBm4O236NR9i8Gv/f3HqOk1lIz
	79mWkNLWNihaD+ytSPoG4VH75SwSxA6aWHbNLrNhyzgojdzSUA5JgFz76a/a5xi0HTBcH5P3DNdFz
	YKYjesew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKBiA-0000000G3sp-2ewx;
	Fri, 23 Oct 2026 09:37:18 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKBi7-0000000G3sS-3Zpb
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 09:37:17 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69N7FBpA2092791
	for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 09:37:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0A/hiubLfovf0TfmFThVYJL1M1iagPS6Nh++o400qLk=; b=BCOwcxZyeo7EnaSu
	EyLA5DyH3FioyXZKt0nqvQ4PLcOfe+KQJ08NjWH2uFM8ubEy9auudJQwotjFl4Wy
	VN40n4oLRt/upUeeSJon7tX1WxzusV8rl7v2tp24IZy0o0g4uQaXv68QPvSBGQ3W
	UtL3t836zzUZnDlyrtjwx7V4vapmkWW7CEjPIVewiu0EojtsKlVlckycVoBerEu8
	Fa/kDYMyfl36iz8NTHei7dB/d9wmSrKWpZ1e8N3Uza7nxWdjKYz6d+fNbuykBfBl
	kCyX7feHObdRJi4+Rh1KQP7wo86Gvh6r2W/Ajy7/Y5+QVLZxhTvEEyUa5GS/axoe
	506lnA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hftyga7c4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 09:37:13 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-8a065e2933fso931587b3a.3
        for <linux-phy@lists.infradead.org>; Fri, 23 Oct 2026 02:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792748233; x=1793353033; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=0A/hiubLfovf0TfmFThVYJL1M1iagPS6Nh++o400qLk=;
        b=CU0Q/UTXf0xDkPpkVFV2KwUHoxqIh8jC28XbvG8iYYeJ1ZbWD7a5V+i7ZCmqJQpPak
         AiUMNyVIwWzk8tcGSQc8mDPHbJkS5u6A3gpFnF9yx7EELEd2huJ6eTp7L2Uvt8ZKZ508
         cKTx8EuXRF1xDGM06zUc6ZEHSclkwA4IYYJ9EQDLR6pROai+Dq2H8KmsVPF5kGPHIq7E
         y33Ku14r5W59L62QJ3GcBWDpAOmkhoL8v2HG0o3qQEuN4EHimDp0ypnjqXx5r00Hw7s2
         nhzAH9jLQCrSrFMIBeI0+pU1f+MzibUGrC7ujo+VZ0zYkdQlfTeHjMhd7a2OtVXCn6Ys
         iKCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792748233; x=1793353033;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=0A/hiubLfovf0TfmFThVYJL1M1iagPS6Nh++o400qLk=;
        b=mOoomE/WFmW2mZExUZkQuc7aiGWChZbGnypPc+N91RnUXO/2FS3aadQ38G/yjS2aVj
         Wy1VwX3io/7FC8JCnoaEi3SmmnRTAPDmSGHDJdaXMNqNiXR1m4tCj+nJwoST8HMEOQzz
         qbs0KAZE5Ylz/EhbiZs6PQoQp4oMqYuqM1WOr8fxwvq12SrHJmy4qlW7w1T3ehwIFCah
         5yMXP/5KZAVXVzIbL+6BvXli25p64/cXJmncskcJPC6+RRIzxnK998ggUGKTif+Z5Hef
         muK547N1oR2MCMM4bZt+2BLlPZQ7+wH9yX8ROfHd3tYTredFnSYcq1PuWrkaeq9Z6vS2
         ikXg==
X-Gm-Message-State: AFq9FYIB/Nw3knJ9Pa3cqo7hOKhrBKlCqLH7wOSeG0kLbm5Kzq+DdZY8
	RFZP+J4dbqd74jUOtidQLRfaazvVu33IMNSTZkJkLXarkum98OqDLVMVGL/Qlxg2ZNsqPTdusbl
	JxBrHz+KTa9fEzxzoJjiZWXKkdsMO9AuNKC7pIEVyhMjOVgH0G3LyX1GQGyPp6B+SbopE
X-Gm-Gg: AYBFou2xJN+/NwO6rjNNwpWxXGlvxHL5zT1PebZYQ+s2CLHs9hSQFtBKHfnyV3JAIKD
	/aJIPGd50dAV6W+QnlDlcaGHpZrDOA+Y+yp4WPxb6HgXgggQya1ELaHNZBfH2ylDSJxqftQHWH0
	lmF9TxiQNUhuspLa3f5OOu8wSSUBiLgwKcOgzKqizg71CN7zDNL3h3jYwjxoP6mzr+EKocUPhsW
	N9oZTkf1tNfpAmTSYm46/W7cLeuBB1vb0R6bq+kzeahXIPxoNTdbIXYgoiMhgPbmKAcMa9bPg4U
	/VpH/iXhx/BB0fY4FlUAnbM0mqc6nHFkFCjvGwj+vnna8I48OjmmkheAT01O2dt1395mrTEg5wW
	dyPDFWe+NDKb6FtRLHHWGgCJOAHNt8Fn+olu7Bi49/LY2OUdqqFBkLEgQ5NX5
X-Received: by 2002:a05:6a00:390a:b0:89d:e6e2:b2a6 with SMTP id d2e1a72fcca58-8a2c787c1afmr1496049b3a.45.1792748233034;
        Fri, 23 Oct 2026 02:37:13 -0700 (PDT)
X-Received: by 2002:a05:6a00:390a:b0:89d:e6e2:b2a6 with SMTP id d2e1a72fcca58-8a2c787c1afmr1496014b3a.45.1792748232524;
        Fri, 23 Oct 2026 02:37:12 -0700 (PDT)
Received: from [10.239.96.176] ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8a2c8dfb7e8sm538052b3a.36.2026.10.23.02.37.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2026 02:37:12 -0700 (PDT)
Message-ID: <f713be3a-5ff4-4157-ac87-47a19e3f0a86@oss.qualcomm.com>
Date: Fri, 23 Oct 2026 17:37:05 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v21 14/14] arm64: dts: qcom: kaanapali-mtp-camera-s5kjn5:
 Add DT overlay
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
 <20261011-kaanapali-camss-v21-14-04fd28d815c6@oss.qualcomm.com>
 <92bb95d5-946e-4169-8382-487ed9ed2254@oss.qualcomm.com>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <92bb95d5-946e-4169-8382-487ed9ed2254@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cZpHPXDM c=1 sm=1 tr=0 ts=6adb2ac9 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=-Nk8vmC4l4_uGId51r4A:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIzMDAzOCBTYWx0ZWRfX7Q68OJJxQfDH
 YQFSKf7u/78HHzd3y6FnNUdjOY2TGkNNky4S0QJX1FWXUTj6Knqh+4M+JeV29UZ2P+9MdBXSAUC
 r82Lcs6laWCnsIyonnDEqSEsgwwrIeY=
X-Proofpoint-GUID: gI5vSV-i33bd7Ra5ml1VHsEHnBLIVANZ
X-Proofpoint-ORIG-GUID: gI5vSV-i33bd7Ra5ml1VHsEHnBLIVANZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIzMDAzOCBTYWx0ZWRfX97uhFt3mHRci
 GvpvAvMUFXzXq2ONDenFgHWqkvWAniZ6eJkABhhreQgk9L5EkE0xy04iFqNsfZ7iC1uT0nOBx3s
 LBRM5BtNECqhIGmqY3MearrZKTvXh1hOpc0Otf9M0CkhHTrs+1v9bBSV1P+p5lUDQvOnidVmWxz
 bM2eBmEdUeJKxpoG7fAbB0Xpnr7RjntSuotpNQt9OyXoDR4u2WMgH9CU+SAnb0cWXXm8w4gvxsX
 u8ZOPoUFjfhyrm/sy4njOR7U30hkxV5ul+Gov7wP1ai97mDgYFWE2vG+GVtIG3AW4aTeOVqBg08
 YEk+ysBbJbg7r/bBsznhi0lZhqd7eRWbvolgsTvyyre8Z5FU9O/UgCySpCHpRUXWRSSn6SJuhAQ
 4IdD4HfTb3s8jpea2unxeLxVQpB96eZ8acg/3JYvUJs9GyUR3kSr8Iud+EarEKBug7sPmpq7PFk
 iwuphxlejHQ+gh9//jQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-23_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 clxscore=1015 spamscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610230038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261023_023716_013388_83791EDD 
X-CRM114-Status: GOOD (  16.18  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 10/21/2026 10:02 PM, Konrad Dybcio wrote:
> On 10/12/26 8:45 AM, Hangxiang Ma wrote:
>> Enable the S5KJN5 image sensor via CCI on Kaanapali MTP board.
>>
>> The Kaanapali MTP board connect S5KJN5 with QUP I2C bus by default. This
>> DTBO enables S5KJN5 on CCI-0 interface connected to the CSIPHY2 in four
>> lane mode on a rework camera module.
>>
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +&camss_csiphy2_in_port {
>> +	camss_csiphy2_inep: endpoint {
>> +		data-lanes = <1 2 3 4>;
>> +		remote-endpoint = <&csiphy2_out_ep>;
>> +	};
>> +};
> 
> Please define the endpoint in the SoC DTSI like the glymur submission:
> 
> https://lore.kernel.org/linux-arm-msm/b5734dac-1285-452b-8107-9164e6a3e5fa@oss.qualcomm.com/T/#m55a2d04f3fe573dbbc86fe89a874514494eca345
> 
> [...]
> 
> 
>> +&csiphy2_in_port {
>> +	csiphy2_in_ep: endpoint {
>> +		bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
>> +		clock-lanes = <0>;
>> +		data-lanes = <1 2 3 4>;
>> +		remote-endpoint = <&s5kjn5_out_ep>;
>> +	};
>> +};
>> +
>> +&csiphy2_out_port {
>> +	csiphy2_out_ep: endpoint {
>> +		remote-endpoint = <&camss_csiphy2_inep>;
>> +	};
>> +};
> 
> likewise for these two
> 
> With that:
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad

Hi Konrad, there is one subtle difference between the Glymur and 
Kaanapali bindings that I'd like to clarify.

Kaanapali follows the X1E80100 binding, where data-lanes is required. 
Therefore, the endpoints need to be defined in the board DTS, following 
the same pattern as Bryan's series.

<https://lore.kernel.org/linux-arm-msm/20260917-x1e-camss-csi2-phy-dtsi-v7-4-1a63eb35838b@linaro.org/>

Moving these endpoint definitions to the SoC DTSI, as done for Glymur, 
would cause dtbs_check warnings. Would it be OK to keep the current 
endpoint definitions for Kaanapali?

---
Best Regards,
Hangxiang

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
