Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5B07C3ABC9
	for <linux-phy@archiver.kernel.org>; Fri, 16 May 2025 22:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cxc7ZEc9/LUU4fgSm5QBD9QURE6bC4Ra+Tgq4Zh1o1s=; b=SlKwms0I6lG5ig
	n3X3ZyRJ0rOnlCnsKlkmktjrB2DQr6saD9V2+uKzzSOiEcAYNe8I2oymcw9ouI/XGE0IWusDx2H+N
	jkg6Gls/5gmfELBJrhV8Aba9ZpYzij7/na8MjYifuW4RYYDPy3NgDQk0KtT2xigizH+r1hzNZDrec
	/yBsvklDdUbaDMK+MnsSKVOfZMoxXPo98KMGs0EvtfqC1U6wXeC8UyS7g4FllDKZFL+w5cR81dvme
	ExC2ktnNB8bXOlnfbGmJ/yzS3jQWyORxy8qIkhaOClQjKreKdFiGgMw/CteZZq47i1sjFrHyxzdoH
	cKnML+51CtlvmYPEgwAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uG39O-00000004iwE-1NcV;
	Fri, 16 May 2025 22:03:30 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uG39M-00000004ivq-0D02
	for linux-phy@lists.infradead.org;
	Fri, 16 May 2025 22:03:29 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54GCFOoD014086
	for <linux-phy@lists.infradead.org>; Fri, 16 May 2025 22:03:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3S9P+NpYn9J0BlmANLvmQ/cfBBGE+oF56fLZiQbC8ug=; b=N+RLfT1RHhzleWE3
	IhKCFSUyPw0+0spY87oL/NoMQe3hPZJdTT6l/VLehAShpGFenbicg6WubRy8xL8t
	u7sRQmORPpovMHAsg0r/ANDdsQNO81Pby/maVmhcEaKW5yIAvKFrNw/D+sj1b2PE
	zI+i5hJkQfrDBex6hyIvxc25HB6qiVrNhjEc7Cs/rDE6sZ28iIO+3bVuEMaxPHtD
	xzwNdXb/RlZdJR5PyjnGblCCoU12Dz2yUF4SER/3TZ3I3iD/7srZWCjEKFkiAyZN
	Z0S9Br0r5qpONAVu46vuQuPOLYz+q2H2lCzvtrBYV7y7Y8u+UQbLmOi7xjd22lLc
	xoMdpw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46nx9jtqds-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 16 May 2025 22:03:26 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6f6e59df2f3so49372006d6.3
        for <linux-phy@lists.infradead.org>; Fri, 16 May 2025 15:03:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747433005; x=1748037805;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3S9P+NpYn9J0BlmANLvmQ/cfBBGE+oF56fLZiQbC8ug=;
        b=mmZO11Hk4LKDrulY17hlzih5nflWICk42DTVEjawxvK5A2fNsbrUXer0v/Al5YsGJQ
         DurrSSGoEAIHAzLqS8rjSh5Rr/Tp6bZHEr0nqdUrEHWaj3SkqGRfkv4RdEP0u+AeWmaM
         BTj64XE2kWQ3PIfhafyet9t8dJzdJJnPtDCuy5W2FJIPJIQRPH4xkP60m9dA9709hSW/
         S5cRaRlTjo84ERHJqMoS9eDO8NXCjyWE+fgBlFzpSXNNiP99LcNBPwYkCXa4zIMVs0VT
         C4HTT0+ilqOqg8p+xaTOtM0sB3KQuUmlJMssexXmGZNntHZ7HomhMrCJTHiPNPHLosyH
         VYdg==
X-Forwarded-Encrypted: i=1; AJvYcCVDM99ak9989QEV4Sh0Xj7So2Yuf2kf6pJHRzgM3Bwy4gtbz2dMTelPxtiWz8yJ4fiMU+ygGHb6yAY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxgC46tDA3cct0BMpcvNV+fRp1vS/SVFZzBW0jsn6zjploWh+bz
	xwbbpfgZ4OlQy4nm69dpn4EX4H/kWX6b+qGptaS4wZqje8J9B36Fljb4Umu6zQGI4oBRxfJLxTj
	2JyO2WjQHTFe6hycEhZcPA5Mr0IYOFRFEurjIKt0it7pIbrIr7bJ2728yZdWYphApc4Kj
X-Gm-Gg: ASbGncsNOdW4LlkzAL/MvZAZx5bUV7Dzklyrvi95+LJsc4F0wyEpyEzBvjOTp0CR1IP
	zUKp8C9L7TelHha472TIJkko7ipfoPWD6BYmCvkbMM6ZjIP9P0BSfm1oNohWWFP6RU9AMNK4sBa
	ROdiH2bkGSzwrPx60ZmVlxbIy4Yxj/tUgL0SuTh7puzylepWTuakG6gxFdClGrUTADJ9ghEqgwO
	HOwPNPimezeWqsnfL8phi7DuDyI151TRpq+F96pjnMSzEmYVFhBVbreNZKiDP+GbDhWCgCkyOSI
	LUMAJL/o0/mZ4zQoDbd2bSGsEJVDDSjlze/+SvdRMnD8K8m6Ny/RElLBbFImprT5lUQ50Zf640o
	=
X-Received: by 2002:a05:6214:246a:b0:6f5:e2b:98a3 with SMTP id 6a1803df08f44-6f8b0887f70mr87908046d6.25.1747433004930;
        Fri, 16 May 2025 15:03:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWB45tewJlV5uXCDbTSp9IwILzgTOKAHZJHMtCm1r+ufsAFmrPW8gFZ/teJR4n3mhhNkaHGQ==
X-Received: by 2002:a05:6214:246a:b0:6f5:e2b:98a3 with SMTP id 6a1803df08f44-6f8b0887f70mr87907466d6.25.1747433004512;
        Fri, 16 May 2025 15:03:24 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-550e7017f8asm604298e87.110.2025.05.16.15.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 15:03:23 -0700 (PDT)
Date: Sat, 17 May 2025 01:03:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_nayiluri@quicinc.com,
        quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sa8775p: Remove max link speed
 property for PCIe EP
Message-ID: <bpc4tsp4kghqohoxm42qls7gzd5me7xrpodmazyhpvjjlkkay2@paoq5zygczdd>
References: <20250514-update_phy-v2-0-d4f319221474@quicinc.com>
 <20250514-update_phy-v2-2-d4f319221474@quicinc.com>
 <8ba99df8-012b-4883-af6a-970dd9f877f6@linaro.org>
 <f5e1510f-3496-4f5e-b093-623d3b4be428@oss.qualcomm.com>
 <CAMyL0qPH2r8oXOrNp3jF-nBJCRCZzJr8rYrHn+Yp0MHR0Wy-vw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMyL0qPH2r8oXOrNp3jF-nBJCRCZzJr8rYrHn+Yp0MHR0Wy-vw@mail.gmail.com>
X-Proofpoint-ORIG-GUID: 6ipZnHXrLnbxXAE9c4wFYhJUiDLWBJvS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE2MDIxNiBTYWx0ZWRfXxTRHiuoIl+R3
 Vb8nP1ivE6V0Ld/M7WKvnEQC8qDKy2cc3FSFqvTJQsbtl48U8l1xgx7shNDFFxF02NfDar1/oIg
 qEV8g7XVhl8l2qEXms5pp6r/YKo1NQZPS5pBqpyZhoiKOd2z0q5jSi2WHH/tX+tiNb8vlneqIJJ
 9l4iVNGdXDh07x3w073Odcu8p+KGou8PNhxpqV3GFr1+YZhJar0sZMRKqN76UyzUMjA95mPyb0f
 nCToNT8uKdiBWaeaZyb2P28WIUsNCTUsr5eXF1f3oHM+qGrQTPIc7QUbhNmfou0g3/WQi/gXy7J
 qVyAJ7XlZrsLXkTQueAoaXvkVqvj6Ep3cuhsrZ/6/mlvF/Awa5AQfI3sWivf6Sqovs1u8662c4F
 8f6njmycfYZ84GaELRkXq4OpQmBJQy3wOrXFkhrnocoiX0SeJsbA/+ds6xk9awo90VTpbPGQ
X-Authority-Analysis: v=2.4 cv=CIIqXQrD c=1 sm=1 tr=0 ts=6827b62e cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=bd9M3xGx0OlNIZ6swnUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: 6ipZnHXrLnbxXAE9c4wFYhJUiDLWBJvS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-16_07,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=999 spamscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505160216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250516_150328_095831_04ED8091 
X-CRM114-Status: GOOD (  21.92  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBNYXkgMTYsIDIwMjUgYXQgMDM6NTk6MDJQTSArMDUzMCwgTXJpbm1heSBTYXJrYXIg
d3JvdGU6Cj4gT24gRnJpLCBNYXkgMTYsIDIwMjUgYXQgMjozMOKAr1BNIEtvbnJhZCBEeWJjaW8K
PiA8a29ucmFkLmR5YmNpb0Bvc3MucXVhbGNvbW0uY29tPiB3cm90ZToKPiA+Cj4gPiBPbiA1LzE0
LzI1IDY6MzggUE0sIG5laWwuYXJtc3Ryb25nQGxpbmFyby5vcmcgd3JvdGU6Cj4gPiA+IE9uIDE0
LzA1LzIwMjUgMTM6MzcsIE1yaW5tYXkgU2Fya2FyIHdyb3RlOgo+ID4gPj4gRnJvbTogTXJpbm1h
eSBTYXJrYXIgPG1yaW5tYXkuc2Fya2FyQG9zcy5xdWFsY29tbS5jb20+Cj4gPiA+Pgo+ID4gPj4g
VGhlIG1heGltdW0gbGluayBzcGVlZCB3YXMgcHJldmlvdXNseSByZXN0cmljdGVkIHRvIEdlbjMg
ZHVlIHRvIHRoZQo+ID4gPj4gYWJzZW5jZSBvZiBHZW40IGVxdWFsaXphdGlvbiBzdXBwb3J0IGlu
IHRoZSBkcml2ZXIuCj4gPiA+Pgo+ID4gPj4gQWRkIGNoYW5nZSB0byByZW1vdmUgbWF4IGxpbmsg
c3BlZWQgcHJvcGVydHksIFNpbmNlIEdlbjQgZXF1YWxpemF0aW9uCj4gPiA+PiBzdXBwb3J0IGhh
cyBhbHJlYWR5IGJlZW4gYWRkZWQgaW50byB0aGUgZHJpdmVyLgo+ID4gPgo+ID4gPiBXaGljaCBk
cml2ZXIsIFBIWSBvciBDb250cm9sbGVyID8KPiA+Cj4gPiBDb250cm9sbGVyLCBzZWUKPiA+Cj4g
PiAwOTQ4Mzk1OWUzNGQgKCJQQ0k6IGR3YzogQWRkIHN1cHBvcnQgZm9yIGNvbmZpZ3VyaW5nIGxh
bmUgZXF1YWxpemF0aW9uIHByZXNldHMiKQo+IAo+IFllcywgdGhpcyBwYXRjaCBpcyBoZWxwaW5n
IHRvIHNvbHZlIGdlbjQgc3RhYmlsaXR5IGlzc3VlLgo+ID4KPiA+IGFuZCBjb21taXRzIGFyb3Vu
ZCBpdAo+ID4KPiA+IGRvZXMgdGhpcyBjaGFuZ2UgZGVwZW5kcyBvbiB0aGUgcGF0Y2ggMSBQSFkg
c2V0dGluZ3MgdXBkYXRlID8KPiA+Cj4gPiBUaGF0IEknbSBjdXJpb3VzIGFib3V0IHRvbywgYnV0
IEkgd291bGQgZ3Vlc3N0aW1hdGUgbm8KPiA+Cj4gdGhpcyBjaGFuZ2UgZG9lc24ndCBkZXBlbmRz
IG9uIHRoZSBwYXRjaCAxIFBIWSBzZXR0aW5ncyB1cGRhdGUKClRoZW4gd2hhdCBoYXMgY2hhbmdl
ZCwgYXMgcHJldmlvdXNseSBpdCB3YXMgZG9jdW1lbnRlZCB0byBoYXZlIHN0YWJpbGl0eQppc3N1
ZXMuCgotLSAKV2l0aCBiZXN0IHdpc2hlcwpEbWl0cnkKCi0tIApsaW51eC1waHkgbWFpbGluZyBs
aXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
